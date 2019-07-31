//
//  Controller.swift
//  LogicTest
//
//  Created by 小山順一 on 2019/07/31.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    class QitaListViewController: UIViewController,UITableViewDelegate {
        private let mModel = QiitaViewModel();
    
    override func loadView() {
        self.view = CustomView()
    }
    }
    
    
    
    https://github.com/yamasakitomohiro/PerfectMVC.git

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
