//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Nirmala Jayaraman on 2/19/18.
//  Copyright © 2018 Nirmala Jayaraman. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    //MARK: Properties
    
    var recordedAudioURL: URL!
    
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slowSpeed = 0, fastSpeed, highPitch, lowPitch, echo, reverb
    }
    
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var lowButton: UIButton!
    @IBOutlet weak var highButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupAudio()
        
        setupButtons(button: slowButton)
        setupButtons(button: fastButton)
        setupButtons(button: lowButton)
        setupButtons(button: highButton)
        setupButtons(button: echoButton)
        setupButtons(button: reverbButton)
        setupButtons(button: stopButton)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    //A method to setup the buttons properly on the UI for all devices
    func setupButtons(button: UIButton){
        button.imageView?.contentMode = .scaleAspectFit
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slowSpeed:
            playSound(rate: 0.5)
        case .fastSpeed:
            playSound(rate: 1.5)
        case .highPitch:
            playSound(pitch: 1000)
        case .lowPitch:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        stopAudio()
    }
    
}
