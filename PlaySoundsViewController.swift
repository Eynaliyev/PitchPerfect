//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Rustam Eynaliyev on 6/6/16.
//  Copyright © 2016 Rustam Eynaliyev. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var revertButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: NSURL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: NSTimer!
    
    enum ButtonType Int {case Slow = 0, Fast, Chipmunk, Vader, Echo, Reverb}
    
    @IBAction func playSoundForButton(sender: UIButton) {
        print("Play Sound Button pressed")
    }

    @IBAction func stopButtonPressed(sender: AnyObject) {
        print("Stop Audio Button pressed")
    }
    
    var recordedAudioURL: NSURL!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("PlayerSoundsViewController loaded")
        setupAudio()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        configureUI(.NotPlaying)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
