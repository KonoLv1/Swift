//
//  CustomView.swift
//  LogicTest
//
//  Created by 小山順一 on 2019/07/31.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class CustomView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    required init(model: QiitaViewModel) {
        table = UITableView(frame: CGRectMake(0, 0, 0, 0), style: UITableViewStyle.Plain);
        refreshControl = UIRefreshControl()
        table.addSubview(refreshControl)
        
        super.init(frame: CGRectMake(0, 0, 0, 0));
        self.addSubview(table);
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
