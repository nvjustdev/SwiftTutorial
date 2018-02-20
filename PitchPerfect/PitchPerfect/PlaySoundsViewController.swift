//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Nirmala Jayaraman on 2/19/18.
//  Copyright © 2018 Nirmala Jayaraman. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {
    
    //MARK: Properties
    
    var recordedAudioURL: URL!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(recordedAudioURL)
    }
    
    
}
