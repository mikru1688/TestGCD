//
//  ViewController.swift
//  TestGCD
//
//  Created by Frank.Chen on 2017/1/22.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        // ========================================================================================
        // dispatch groups 介紹及應用
//        let group: DispatchGroup = DispatchGroup()
//        
//        let queue1 = DispatchQueue(label: "queue1", attributes: .concurrent)
//        queue1.async(group: group) {
//            // 事件A
//            for i in 1 ... 100 {
//                print("i: \(i)")
//            }
//        }
//        let queue2 = DispatchQueue(label: "queue2", attributes: .concurrent)
//        queue2.async(group: group) {
//            // 事件B
//            for j in 101 ... 200 {
//                print("j: \(j)")
//            }
//        }
//        
//        group.notify(queue: DispatchQueue.main) {
//            // 已處理完事件A和事件B
//            print("處理完成事件A和事件B...")
//        }
        
        // ========================================================================================
        // 驗證UIKit只能在主執行緒工作
        // 建立Serial Queues
//        let serialQueue: DispatchQueue = DispatchQueue(label: "serialQueue")
//        
//        // 驗證UIKit只能在主執行緒工作
//        serialQueue.async {
//            for i in 1 ... 10 {
//                print("i: \(i)")
//            }
//            
//            // 在主執行緒更新UI元件
//            DispatchQueue.main.async {
//                let label: UILabel = UILabel()
//                label.frame = CGRect(x: self.view.frame.size.width / 2 - 50, y: self.view.frame.size.height / 2 - 25, width: 100, height: 50)
//                label.text = "Hello World"
//                label.textColor = UIColor.black
//                self.view.addSubview(label)
//            }
//        }
        
        // ========================================================================================
        // 建立 concurrent queues 和非同步的 block
//        let concurrentQueue: DispatchQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
//        
//        serialQueue.async {
//            // 非同步化
//        }
//        
//        // 非同步佇列的使用方式與驗證非同步執行的結果
//        let concurrentQueue1: DispatchQueue = DispatchQueue(label: "concurrentQueue1", attributes: .concurrent)
//        
//        let concurrentQueue2: DispatchQueue = DispatchQueue(label: "concurrentQueue2", attributes: .concurrent)
//        
//        let concurrentQueue3: DispatchQueue = DispatchQueue(label: "concurrentQueue3", attributes: .concurrent)
//        
//        concurrentQueue1.async {
//            for i in 1 ... 10 {
//                print("i: \(i)")
//            }
//        }
//        
//        concurrentQueue2.async {
//            for j in 100 ... 109 {
//                print("j: \(j)")
//            }
//        }
//        
//        concurrentQueue3.async {
//            for k in 200 ... 209 {
//                print("k: \(k)")
//            }
//        }
        
        // ========================================================================================
        // 建立serial queues和同步的block
//        let serialQueue: DispatchQueue = DispatchQueue(label: "serialQueue")
//        serialQueue.sync {
//            // 同步化
//        }
//        
//        // 驗證同步執行的結果
//        serialQueue.sync {
//            for i in 1 ... 10 {
//                print("i: \(i)")
//            }
//        }
//        
//        for j in 100 ... 109 {
//            print("j: \(j)")
//        }
        
        // ========================================================================================
        // 驗證同步執行的結果
//        serialQueue.sync {
//            for i in 1 ... 10 {
//                print("i: \(i)")
//            }
//        }
//        
//        for j in 100 ... 109 {
//            print("j: \(j)")
//        }
        
        // Quality of service(QoS)介紹及應用
//        let queue1 = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInteractive) // 最高順位
//        let queue2 = DispatchQueue.global(qos: DispatchQoS.QoSClass.unspecified) // 最低順位
//        
//        queue1.async {
//            for i in 1...10 {
//                print("queue1: \(i)")
//            }
//        }
//        
//        queue2.async {
//            for j in 100...110 {
//                print("queue2: \(j)")
//            }
//        }
        
        // ========================================================================================
        // 延遲執行介紹及應用
        let delayQueue = DispatchQueue(label: "delayQueue")
        print("Before: \(Date())")
        delayQueue.asyncAfter(deadline: DispatchTime.now() + 2) {
            print("After: \(Date())")
        }
    }
    
}

