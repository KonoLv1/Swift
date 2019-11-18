import AVFoundation
import UIKit

class ViewController: UIViewController, AVAudioPlayerDelegate {
    @IBOutlet weak var A1: UIButton!
    @IBOutlet weak var A2: UIButton!
    // 効果音鳴らす用のクラスのインスタンス
    var player1 =  Music()
    var player2 =  Music()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // クラスの関数を呼び出す
   //     player1.playSound(name: "Tutorial")
    //    player2.playSound(name: "Tutorial")
        
        
    }
    
    // 同時に音楽を再生するために、関数と変数のセットを複数作れるよう、クラスとして定義する。
  

    @IBAction func A1(_ sender: Any) {
        player1.playSound(name: "Tutorial")
    }
    @IBAction func A2(_ sender: Any) {
        player1.playSound(name: "Stop")
    }
    @IBAction func A3(_ sender: Any) {
        player2.playSound(name: "Tutorial")
    }
    @IBAction func A4(_ sender: Any) {
        player2.playSound(name: "Stop")
    }
    
@IBAction func backToTop(segue: UIStoryboardSegue) {}
}
