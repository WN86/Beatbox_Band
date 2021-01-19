//
//  ViewController.swift
//  Beat Box Band 20100421
//
//  Created by 123 on 2020/4/21.
//  Copyright © 2020 sw. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["bbox1", "bbox2", "bbox3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func MemberPressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
    }
    
    func playSound(){
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
            
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}

