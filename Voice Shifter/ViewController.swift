//
//  ViewController.swift
//  Voice Shifter
//
//  Created by Lab User on 10/8/15.
//  Copyright (c) 2015 philoniare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        // TODO: display status text
        // TODO: start recording voice
            recordLbl.hidden = false
        
        
        
    }
    @IBAction func stopRecord(sender: UIButton) {
        recordLbl.hidden = true
    }

}

