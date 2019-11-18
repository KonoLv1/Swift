//
//  ViewController.swift
//  ColorTest
//
//  Created by 小山順一 on 2019/11/17.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func backGroundColor(r:Double,g:Double,b:Double,r1:Double,g1:Double,b1:Double){
        
        let topColor = UIColor(red:CGFloat(r), green:CGFloat(g), blue:CGFloat(b), alpha:1)
        let bottomColor = UIColor(red:CGFloat(r1), green:CGFloat(g1), blue:CGFloat(b1), alpha:1)
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)

        
        
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
