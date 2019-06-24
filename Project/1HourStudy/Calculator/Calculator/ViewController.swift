//
//  ViewController.swift
//  Calculator
//
//  Created by 小山順一 on 2019/06/24.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Bt1: UIButton!
    @IBOutlet weak var Bt2: UIButton!
    @IBOutlet weak var Bt3: UIButton!
    @IBOutlet weak var Bt4: UIButton!
    @IBOutlet weak var Bt5: UIButton!
    @IBOutlet weak var Bt6: UIButton!
    @IBOutlet weak var Bt7: UIButton!
    @IBOutlet weak var Bt8: UIButton!
    @IBOutlet weak var Bt9: UIButton!
    @IBOutlet weak var Bt0: UIButton!
    @IBOutlet weak var BtPuls: UIButton!
    @IBOutlet weak var OutText: UILabel!
    @IBOutlet weak var BtEqual: UIButton!
    @IBOutlet weak var BtDelete: UIButton!
    
    
    var no = 0
    var box:[Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        button_text()
    }
    func button_text(){
        Bt1.setTitle("1", for: UIControl.State.normal)
        Bt2.setTitle("2", for: UIControl.State.normal)
        Bt3.setTitle("3", for: UIControl.State.normal)
        Bt4.setTitle("4", for: UIControl.State.normal)
        Bt5.setTitle("5", for: UIControl.State.normal)
        Bt6.setTitle("6", for: UIControl.State.normal)
        Bt7.setTitle("7", for: UIControl.State.normal)
        Bt8.setTitle("8", for: UIControl.State.normal)
        Bt9.setTitle("9", for: UIControl.State.normal)
        Bt0.setTitle("0", for: UIControl.State.normal)
        BtPuls.setTitle("+", for: UIControl.State.normal)
        BtEqual.setTitle("=", for: UIControl.State.normal)
        BtDelete.setTitle("C", for: UIControl.State.normal)
    }

    @IBAction func Bt1(_ sender: Any) {
        no += 1
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt2(_ sender: Any) {
        no += 2
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt3(_ sender: Any) {
        no += 3
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt4(_ sender: Any) {
        no += 4
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt5(_ sender: Any) {
        no += 5
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt6(_ sender: Any) {
        no += 6
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt7(_ sender: Any) {
        no += 7
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt8(_ sender: Any) {
        no += 8
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt9(_ sender: Any) {
        no += 9
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func Bt0(_ sender: Any) {
        no += 0
        OutText.text = String(no)
        no = no * 10
    }
    @IBAction func BtPuls(_ sender: Any) {
        no = no / 10
        box.append(no)
        no = 0
        
    }
    @IBAction func BtEqual(_ sender: Any) {
        var count:Int = 0
        no = no / 10
        box.append(no)
        for addno in box{
            print(addno)
            count += addno
            
        }
        OutText.text = String(count)
    }
    @IBAction func BtDelete(_ sender: Any) {
        no = 0
        box = []
        OutText.text = String(no)
    }
    
}

