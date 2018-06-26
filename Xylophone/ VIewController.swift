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
    
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        print("Button \(sender.tag) was pressed")
        let currentSound = "note\(sender.tag)"
        playSound(soundToPlay: currentSound )
        
    }// end notePressed
    
    func playSound(soundToPlay: String){
        let soundUrl = Bundle.main.url(forResource: soundToPlay, withExtension: "wav")
        
        do{
            
            player = try AVAudioPlayer(contentsOf: soundUrl!)
            
        }catch let error{
            print(error.localizedDescription)
        }
        
        player.play()
    }

} //end ViewController

