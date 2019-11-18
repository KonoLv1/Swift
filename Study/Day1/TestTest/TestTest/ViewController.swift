//
//  ViewController.swift
//  TestTest
//
//  Created by 小山順一 on 2019/11/13.
//  Copyright © 2019 小山順一. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController, AVAudioPlayerDelegate {
    // 効果音鳴らす用のクラスのインスタンス
    var player1 =  player()
    var player2 =  player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        player1.playSound(name: "音楽ファイル名")
        player2.playSound(name: "音楽ファイル名2")
        
    }
    class player{
        var audioPlayer: AVAudioPlayer!
        func playSound(name: String) {
            guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
                print("音源ファイルが見つかりません")
                return
            }
            do {
                // AVAudioPlayerのインスタンス化
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                // AVAudioPlayerのデリゲートをセット
                audioPlayer.delegate = self as? AVAudioPlayerDelegate
                // 音声の再生
                audioPlayer.play()
            } catch {
            }
        }
    }

    @IBAction func Music1(_ sender: Any) {
    }
    @IBAction func Music2(_ sender: Any) {
    }
}
