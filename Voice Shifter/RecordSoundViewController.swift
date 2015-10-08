//
//  RecordSoundViewController.swift
//  Voice Shifter
//
//  Created by Lab User on 10/8/15.
//  Copyright (c) 2015 philoniare. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundViewController: UIViewController {
    var audioRecorder:AVAudioRecorder!
    @IBOutlet weak var stopRecordBtn: UIButton!
    @IBOutlet weak var recordBtn: UIButton!
    @IBOutlet weak var recordLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool)
    {
        stopRecordBtn.hidden = true
        recordBtn.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton)
    {
        recordLbl.hidden = false
        stopRecordBtn.hidden = false
        recordBtn.enabled = false
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String
        let recordingName = "my_audio.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:], error: nil)
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
        
    }
    @IBAction func stopRecord(sender: UIButton)
    {
        recordLbl.hidden = true
        stopRecordBtn.hidden = true
        audioRecorder.stop()
    }

}

