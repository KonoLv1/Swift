//
//  Music.swift
//  NewTest
//
//  Created by 小山順一 on 2019/11/13.
//  Copyright © 2019 小山順一. All rights reserved.
//
import AVFoundation
import UIKit

class Music: UIViewController,AVAudioPlayerDelegate {
var audioPlayer: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
        func playSound(name: String) {
            guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
                print("音源ファイルが見つかりません")
                audioPlayer.stop()
                return
            }
            do {
                // AVAudioPlayerのインスタンス化
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                // AVAudioPlayerのデリゲートをセット
                audioPlayer.delegate = self as? AVAudioPlayerDelegate
                // 音声の再生
                if name == "STOP"{
                    audioPlayer.stop()
                }else{
                    audioPlayer.play()
                }
            } catch {
    
            }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
