//
//  AppDelegate.swift
//
//  ここでは、「ビュー間でやり取りする変数の宣言」「初回起動かどうかの確認」「初回起動であればチュートリアルに移動」を行なっています。
//
//  Here, "declaring variables to be exchanged between views", "confirming whether it is the first start," and
//  "Go to tutorial for the first start" are performed.
//
//  Ruby
//
//  Created by 小山順一 on 2019/05/26.
//  Copyright © 2019 小山順一. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var userMode:Int = 0    //  ひらがなに変換するかカタカナに変換するかを判断する用(Hiragana or Katakana)
    var userText:String?    //  変換したい文字列(Character to convert)
    let dict = ["firstLaunch": true]    //  初回判定用

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let userDefault = UserDefaults.standard
        let dict = ["firstLaunch": true]
        userDefault.register(defaults: dict)

        // 初回起動ならチュートリアル画面を表示する（Start the tutorial for the first launch）
        if userDefault.bool(forKey: "firstLaunch") {
            userDefault.set(false, forKey: "firstLaunch")
            print("初回起動")
            //　windowを生成
            self.window = UIWindow(frame: UIScreen.main.bounds)
            //　Storyboardを指定
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            // Viewcontrollerを指定
            let initialViewController = storyboard.instantiateViewController(withIdentifier:     "Tutorial")
            // rootViewControllerに入れる
            self.window?.rootViewController = initialViewController
            // 表示
            self.window?.makeKeyAndVisible()
        }
        print("2回目以降の起動")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

