//
//  AppDelegate.swift
//  swiftDemo
//
//  Created by 彬彬 on 2017/12/26.
//  Copyright © 2017年 BinBin. All rights reserved.
//  2017年12月26日15:21:17

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
 
 
}

func CBBLog<Message>(message : Message , file : String = #file, funcName : String = #function , lineNum : Int = #line )  {
    #if DEBUG
        let fileName =  (file as NSString).lastPathComponent
        let date = NSDate()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm:ss.SSS"
        let strNowTime = timeFormatter.string(from: date as Date) as String
        print("\(strNowTime)--\(fileName)--\(funcName)--(行数\(lineNum))-->\(message)")
    #endif
}




