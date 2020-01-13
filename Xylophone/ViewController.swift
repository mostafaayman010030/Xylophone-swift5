//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func press(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline:.now()+2.0){
            self.playMusic(btn:sender)
        }
        sender.alpha=0.5
        
    }
    
    func playMusic(btn:UIButton)
    {
        let url=Bundle.main.url(forResource:btn.currentTitle, withExtension: "wav")
       btn.alpha = 1
        btn.titleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

