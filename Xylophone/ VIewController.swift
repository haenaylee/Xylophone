//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName : String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag-1]
        playSound()
    }
    
    
    func playSound(){
        let soundUrl = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")! //location of where the sound is
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl) //like opening up CD player and putting in the disc
            
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

