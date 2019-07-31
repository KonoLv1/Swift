//
//  ViewController.swift
//  LogicTest
//
//  Created by 小山順一 on 2019/07/31.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // BUTTON //
        let button:UIButton = UIButton(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: self.view.frame.height / 8))
        button.backgroundColor = .blue
        button.setTitle("タップしてね☆", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(pushButton), for: .touchUpInside)
        self.view.addSubview(button)
        
        //  LABEL //
        label.frame = CGRect(x:150, y:300, width:250, height:100)
        self.view.addSubview(label)
        label.textColor = UIColor.blue
        label.font = UIFont.systemFont(ofSize: 100)
        
    }
    
    //  BUTTON TAP  //
    @objc func pushButton(sender: UIButton){
        label.text = String(MyController().tapp_count())
    }
    

    
}

