//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Nirmala Jayaraman on 2/19/18.
//  Copyright © 2018 Nirmala Jayaraman. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    //MARK: Properties
    
    var audioRecorder: AVAudioRecorder! //AV recorder
    
    //UI Properties
    @IBOutlet weak var tapButtonLabel: UILabel! //"Tap here" label
    @IBOutlet weak var recordButton: UIButton! //Record button
    @IBOutlet weak var stopRecordButton: UIButton!//Stop and play button which takes us to the playback view
    
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //When the view is loaded, record button is enabled and stop button is disabled
        flipButtons(recordState: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //A method to disable and enable the right buttons
    //@recordState denotes if recording is in progress
    func flipButtons(recordState: Bool) {
        stopRecordButton.isEnabled = recordState
        recordButton.isEnabled = !recordState
    }
    
    func recordingStart() {
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String //Gets the directory path for the filesystem
        let recordingName = "recordedAudio.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        let session = AVAudioSession.sharedInstance()
        try! session .setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func recordConversation(_ sender: Any) {
        tapButtonLabel.text = "Recording is in progress"
        
        //Recording is in progress. Call flipButtons with true
        flipButtons(recordState: true)
        
        //Actual recording start
        recordingStart()
    }
    
    @IBAction func stopRecordConversation(_ sender: Any) {
        tapButtonLabel.text = "Tap To Record"
        
        //Recording has ended. Call flipButtons with false
        flipButtons(recordState: false)
        
        //Stop the recording
        audioRecorder.stop()
        
        //Set the session to be not active
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        
        //Check if the audio recording was successful
        if flag {
            //Successful Recording
            performSegue(withIdentifier: "segueToPlayBack", sender: audioRecorder.url)
        } else {
            //Unsuccessful Recording
            print("Error in recording")
        }
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPlayBack" {
            let playSoundsVC = segue.destination as! PlaySoundsViewController
            let recordedAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recordedAudioURL
        }
    
    }
    
}

