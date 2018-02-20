//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Nirmala Jayaraman on 2/19/18.
//  Copyright © 2018 Nirmala Jayaraman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tapButtonLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    
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
    fileprivate func flipButtons(recordState: Bool) {
        stopRecordButton.isEnabled = recordState
        recordButton.isEnabled = !recordState
    }
    
    @IBAction func recordConversation(_ sender: Any) {
        tapButtonLabel.text = "Recording is in progress"
        
        //Recording is in progress. Call flipButtons with true
        flipButtons(recordState: true)
    }
    
    @IBAction func stopRecordConversation(_ sender: Any) {
        tapButtonLabel.text = "Tap To Record"
        
        //Recording has ended. Call flipButtons with false
        flipButtons(recordState: false)
    }
    
}

