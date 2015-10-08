//
//  PlayAudioViewController.swift
//  Voice Shifter
//
//  Created by Lab User on 10/8/15.
//  Copyright (c) 2015 philoniare. All rights reserved.
//

import UIKit
import AVFoundation

class PlayAudioViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var error:NSError?
        if var slowSound = NSBundle.mainBundle().pathForResource("slowsound", ofType: "mp3"){
            print(slowSound)
            var filePathUrl = NSURL.fileURLWithPath(slowSound)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: &error)
            
        } else {
            print("the file was not found")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slowPlay(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }

    @IBAction func fastPlay(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func stopPlay(sender: UIButton) {
        audioPlayer.stop()
    }

}
