//
//  Result.swift
//
//  ここでは、「変換された文字の出力」「変換文字入力画面に戻るボタン管理」「変換された文字のクリップボードへのコピー」を行なっています。
//
//  Here, "output of converted character", "button to return to the converted character input screen", and
//  "copy of converted character to clipboard" are performed.
//
//  Ruby
//
//  Created by 小山順一 on 2019/05/28.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class Result: UIViewController {

    @IBOutlet weak var BackImage: UIImageView!
    @IBOutlet weak var Return: UIButton!
    @IBOutlet weak var Copy: UIButton!
    @IBOutlet weak var OutputText: UITextView!

    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  変換テキスト出力処理OutputText
       
        OutputText.text = appDelegate.userText
        AddDoneBttuon()
        BackImageSet()
        
    }

    func AddDoneBttuon(){
        let kbToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        kbToolBar.barStyle = UIBarStyle.default  // スタイルを設定
        kbToolBar.sizeToFit()  // 画面幅に合わせてサイズを変更
        // スペーサー
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        // 閉じるボタン
        let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.commitButtonTapped))
        kbToolBar.items = [spacer, commitButton]
        OutputText.inputAccessoryView = kbToolBar
    }
    // Doneボタンを押したらキーボードを閉じる処理
    @objc func commitButtonTapped() {
         self.view.endEditing(true)
    }
    
    
    
    
    func BackImageSet(){
        let mode = appDelegate.userMode
        if (mode == 0){
            self.BackImage.image = UIImage(named: "OUT1.png")
        }else{
            self.BackImage.image = UIImage(named: "OUT2.png")
        }
    }
    
    //  前の画面に戻る処理
    @IBAction func Return(_ sender: Any) {
        self.dismiss(animated: true, completion:nil)
    }
    
    //  結果をクリックボードにコピーする処理
    @IBAction func Copy(_ sender: AnyObject) {
            let pasteboard: UIPasteboard = UIPasteboard.general
            pasteboard.string = appDelegate.userText
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
