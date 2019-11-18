//
//  NextViewController.swift
//  TestTest
//
//  Created by 小山順一 on 2019/11/13.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    var a = ""
    @IBOutlet weak var Label: UILabel!

    var label = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = a
        self.Label.text = self.label
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
