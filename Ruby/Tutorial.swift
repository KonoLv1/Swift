//
//  Tutorial.swift
//
//  ここでは、「チュートリアル」を行なっています。
//
//  Here we are doing a "tutorial".
//
//  Ruby
//
//  Created by 小山順一 on 2019/05/29.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

class Tutorial: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var TutorialLabel1: UILabel!
    @IBOutlet weak var TutorialLabel2: UILabel!
    @IBOutlet weak var TutorialLabel3: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var Image2: UIImageView!
    @IBOutlet weak var Image3: UIImageView!
    @IBOutlet weak var Image4: UIImageView!
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
           
            TutorialLabel1.text = "画面の中央をタップします。"
            TutorialLabel2.text = "文字を入力後、Doneボタンを押します。"
            TutorialLabel3.text = "文字が変換されます。"
            // スクロール用に画面のサイズ設定
            ScrollView.contentSize = CGSize(width: ScrollView.frame.size.width * 4,
                                            height: ScrollView.frame.size.height)
            pageControl.isUserInteractionEnabled = false
    }
    
    //  ページコントロールレベル制御（Page control level）
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
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
