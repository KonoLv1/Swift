//
//  ViewController.swiftInfomation
//
//  ここでは、「変換モード（ひらがな or カタカナ）」「権利表記」「入力した文字の削除」「変換したい文字の入力」「API処理」を行なっています。
//
//  Here, "conversion mode (Hiragana or Katakana)", "CopyRight notation", "deletion of input characters",
//  "input of characters to be converted" and "API processing" are performed.
//
//  Ruby
//
//  Created by 小山順一 on 2019/05/26.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var BackImage: UIImageView!
    @IBOutlet weak var InputText: UITextView!
    @IBOutlet weak var ModeButton: UIButton!
    @IBOutlet weak var InfoButton: UIButton!
    @IBOutlet weak var DeleteButton: UIButton!
    @IBOutlet weak var Wait: UIActivityIndicatorView!
    @IBOutlet weak var BlackBar: UIView!
    @IBOutlet weak var APILogo: UIImageView!
    
    var mozi = ""   //  変換する文字
    var mode = 0    //  変換モード（画像とAPI送信用変換モード制御用）
    var katamode = "hiragana"   //  変換モード（API送信用）
    var infomode = 0    //  権利者情報表示判定
    var safeflg = 0     //  多重API送信防止用
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InputText.text = ""
        AddDoneBttuon()
    }
    
    // テキストビューに文字を入力した際、キーボードにDoneボタンを追加する処理
    func AddDoneBttuon(){
        let kbToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        kbToolBar.barStyle = UIBarStyle.default  // スタイルを設定
        kbToolBar.sizeToFit()  // 画面幅に合わせてサイズを変更
        // スペーサー
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        // 閉じるボタン
        let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.commitButtonTapped))
        kbToolBar.items = [spacer, commitButton]
        InputText.inputAccessoryView = kbToolBar
    }
    
    // Doneボタンを押した時の処理
    @objc func commitButtonTapped() {
        //  文字の入力がなければキーボードを閉じる　あればAPIにリクエストを送信する
        if InputText.text.isEmpty {
            self.view.endEditing(true)
        }else{
            // 非同期処理（APIレスポンスが返ってくるまで読み込み画面を表示、返却されたら結果表示画面へ）
            Wait.isHidden = false
            HttpRequest {
                print("APIからレスポンスを受信しました。")
                self.Wait.isHidden = true
                self.appDelegate.userMode = self.mode
                self.performSegue(withIdentifier: "ANS", sender: nil)
                self.safeflg = 0
            }
            //  API処理が終了するまでの待ち時間に何らかのアニメーションなどを入れる場合はここに記述する
            //  今回は特になし（先にAPI処理が終了する場合があるのでデータ処理を記述する場合は要注意）
        }
    }

    //  API処理
    func HttpRequest(completion: @escaping () -> ()) {
        if (safeflg == 0){
            safeflg = 1
            print("APIにリクエストを送信する処理を行います。")
            let url = "https://labs.goo.ne.jp/api/hiragana"
            mozi = InputText.text!
            let headers: HTTPHeaders = [
                "Contenttype": "application/json"
            ]
            let parameters:[String: Any] = [
                "app_id":"55b2a2233b234698f38585944b15caf92802a896599c6bf5c420ac421e1586d8","sentence":mozi,"output_type":katamode
            ]
            Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
                // レスポンスからデータ(converted)を抽出する処理
                if let result = response.result.value as? [String: Any] {
                    self.appDelegate.userText = result["converted"] as? String
                }
                completion()
            }
        }
    }
    
    //  変換モード選択処理（Conversion mode setting ”ひらがな” or ”カタカナ”)
    @IBAction func ModeButton(_ sender: Any) {
        if (mode == 0){
            mode = 1
            katamode = "katakana"
            self.BackImage.image = UIImage(named: "IN2.png")
        }else{
            mode = 0
            katamode = "hiragana"
            self.BackImage.image = UIImage(named: "IN1.png")
        }
    }
    
    //  権利者情報表示処理（All Rights Rserved InfoInfomation)
    @IBAction func InfoButton(_ sender: Any) {
        if (infomode == 0){
            BlackBar.isHidden = false
            APILogo.isHidden = false
            infomode = 1
        }else{
            BlackBar.isHidden = true
            APILogo.isHidden = true
            infomode = 0
        }
    }
    
    //  入力文字削除処理（Delete input characters）
    @IBAction func DeleteButton(_ sender: Any) {
        InputText.text = ""
    }
    
    
}
