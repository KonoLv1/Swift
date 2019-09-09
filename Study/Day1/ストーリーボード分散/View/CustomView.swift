//
//  CustomView.swift
//  アルキロク開発
//
//  Created by 小山順一 on 2019/09/09.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var label: UILabel!
    
    class func instance() -> CustomView {
        return UINib(nibName: "CustomView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! CustomView
    }

}
