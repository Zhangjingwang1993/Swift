//
//  ViewController.swift
//  Swift_条件控制
//
//  Created by zjwang on 16/3/15.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var i = 0
        switch i {
        case 0:
             print("0")
        case 1:
             print("1")
        default:
            print("default")
        }
        
        // 不用加上break, Swift的Switch语句会自动在case结尾处加上break, 但是在某些情况下，我们可能会希望Switch能同时执行两条case
        
        var j = 3
        switch j {
        case 0,3: // 在case后的多个条件中，用逗号隔开即可
            print("0, 3")
            fallthrough //使用新的关键字fallthrough能使Switch在执行完一个case之后，紧接着执行下一条case。
        case 1:
            print("1")
        default:
            print("default")
        }
        // 结果
        // 0, 3
        // 1
        
        
        
        // 需要注意的是
        // 1. 当你不想在default中执行任何操作的时候, 可以在default中手动加上break
        
        
        // 更加强大的是:支持多种数据类型
        // 浮点, 布尔, 字符串
        
        // 支持区间运算符如下:
        var k = 15
        switch i {
        case 0 ... 10:
                        break
        case 11 ... 20:
                        break
        default:
                        break
        }
        
        
        // 支持元组
        let request = (true,"success")
        switch request {
        case (true, "success"):
            print("success")
            break
            //
        case (false, "failed"):
            print("failed")
            break
            //
        default: break
            //
        }
        
        
        // 支持额外的逻辑判断
        let request1 = (0,"success")
        switch request1 {
        case (0, let state) where state != "success":
            state
        case (let errorCode, _):
            "error code is \(errorCode)"//被输出:"error code is 0"
        }
        
        var string:String = "Hello"
        if string == "Hello"{
            print("YES")
        }else{
            print("NO")
        }
    
        
        for var i in 1...5{
            print(i)
        }
        
        
        var ii = 0
        while ii < 11
        {
            //  执行10次
            print("while")
        }
        
//        repeat-while::do-while
        var jj = 0
        repeat{
            //
        }while i < 11
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

