//
//  MyModel.swift
//  LogicTest
//
//  Created by 小山順一 on 2019/07/31.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class MyModel: UIViewController {
    
    // タップされた回数の保存を行う
    func save(count:Int){
        let userDefaults = UserDefaults.standard
        userDefaults.set(count, forKey: "Gamedate")
        userDefaults.synchronize()
        print("保存されました")
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
