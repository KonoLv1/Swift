//
//  MyController.swift
//  LogicTest
//
//  Created by 小山順一 on 2019/07/31.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class MyController: UIViewController {
    var count:Int = 0

    //  タップされた回数のカウントを行う
    func tapp_count()-> Int{

        count = UserDefaults.standard.integer(forKey: "Gamedate")
        count = count + 1
        print(count)
        MyModel().save(count:count)
        return count
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
