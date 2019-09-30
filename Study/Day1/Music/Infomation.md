## ‰¹Šy‚ð—¬‚·

```swift:ViewController.swift

import UIKit
import AVFoundation

class ViewController: UIViewController {
var audioPlayer: AVAudioPlayer!
var audioPlayer2: AVAudioPlayer!


@IBOutlet weak var A: UIButton!
@IBOutlet weak var B: UIButton!
override func viewDidLoad() {
super.viewDidLoad()



MusicPlay(mode:-1,fileName: "button")

}


func MusicPlay(mode: Int,fileName: String){
do {
let filePath = Bundle.main.path(forResource: fileName,ofType: "mp3")
let musicPath = URL(fileURLWithPath: filePath!)
audioPlayer = try AVAudioPlayer(contentsOf: musicPath)
} catch {
print("error")
}
audioPlayer.numberOfLoops = mode
audioPlayer.play()
}
}
```