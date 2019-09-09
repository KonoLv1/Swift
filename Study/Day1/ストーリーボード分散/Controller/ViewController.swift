//
//  ViewController.swift
//  アルキロク開発
//
//  Created by 小山順一 on 2019/09/09.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    



    @IBAction func RED(_ sender: Any) {
            let customView = CustomView.instance()
            customView.frame = self.view.frame
            self.view.addSubview(customView)
            customView.label.text = "赤色に変更しました"
        
        
    }
    @IBAction func YELLOW(_ sender: Any) {
        let customView = CustomView2.instance()
        customView.frame = self.view.frame
        self.view.addSubview(customView)
        customView.label.text = "黄色に変更しました"
        
    }
}

