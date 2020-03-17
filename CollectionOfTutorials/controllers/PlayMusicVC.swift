//
//  ViewController.swift
//  CollectionOfTutorials
//
//  Created by Salma Hassan on 4/10/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class PlayMusicVC: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    let wrapperView = UIView(frame: CGRect(x: 16, y: 200, width: 300, height: 20))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadAudio()
        
        
    }
    
    func loadAudio(){
        if let asset = NSDataAsset(name: "amorphis-my-enemy") {
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
                try AVAudioSession.sharedInstance().setActive(true)
                try audioPlayer = AVAudioPlayer(data: asset.data, fileTypeHint: "mp3")
                audioPlayer.prepareToPlay()
                
            }catch {
                print("An error happened while opening an audio session => \(error.localizedDescription)")
            }
            
        }
    }
    
    @IBAction func playSound(_ sender: Any) {
        audioPlayer.play()
        
        view.addSubview(wrapperView)
        
        let volumeView = MPVolumeView(frame: wrapperView.bounds)
        wrapperView.addSubview(volumeView)
    }
    

    @IBAction func stopSound(_ sender: Any) {
        
        audioPlayer.stop()
        wrapperView.removeFromSuperview()
    }
    
}

