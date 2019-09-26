//
//  ViewController.swift
//  Music
//
//  Created by 小山順一 on 2019/09/19.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit
//  音楽を再生させるためにAVFoundationをインポートする
import AVFoundation

class ViewController: UIViewController {
    
//  audioPlayerという変数？を生成する
    var audioPlayer: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
// 音楽を再生するメソッドへ飛ばす
        Music()
    }
// 音楽を再生するメソッド（今回はMusicとした）
    func Music(){
        do {
            // Opening.mp3を引っ張ってくる
            let filePath = Bundle.main.path(forResource: "Opening",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOf: musicPath)
        } catch {
            print("error")
        }
        // 再生回数を指定する。−１は無限再生
        audioPlayer.numberOfLoops = -1
        // 再生する
        audioPlayer.play()
    }

}

