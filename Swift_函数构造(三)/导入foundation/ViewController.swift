//
//  ViewController.swift
//  导入foundation
//
//  Created by zjwang on 16/3/15.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var str:String = "hello"
    let studentScores = [12, 55, 65, 38, 99, 88, 0]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // "!"表示这个可选变量存在，可以使用，如果用"!"访问不存在的可选变量会导致一些错误
        
        // "?"表示这个变量可能不存在，如果不存在，"?"所在语句后面的内容都不会执行
        
        // !是一个强制拆包,告诉编译器我绝对肯定代码能够执行, 如: strValue!.hashValue ,如果不能执行则报错。
        // ?是表示一个不确定,strValue?.hashValue 就等于OC的if(strValue){  [strValue hashValue]; } 有就执行,有没后面代码就不执行。 不会报错。
        
        
        let name:String = "zjw"
        print(sayHello(name))
        sayHi(name)
        studySwift()
        print(studySwift1())
        let result = maxminScores(studentScores)
        print("max:\(result.maxscore), min:\(result.minscore)")
    }

    class Person: NSObject {
        var name : String
        var age : String
        override init() {
            name = ""
            age = ""
        }
    }
    // 构造函数
    func studySwift() ->Void
    {
        print("无参无返回值")
    }
    func studySwift1() ->String
    {
        let name:String = "无参数有返回值"
        return name
    }
    // 有参, 没返回值
    func sayHi (name:String) ->Void
    {
        print("Hi, \(name)")
    }
    // 有参, 有返回值
    func sayHello (name:String)->String
    {
        let result = "Hello," + name
        return result
    }
    // 使用元组返回多个值
    func maxminScores ( scores:[Int] ) -> (maxscore:Int, minscore:Int)
    {
        var curmax = scores[0], curmin = scores[0]
        for score in scores[1..<scores.count]
        {
            curmax = max(curmax, score)
            curmin = min(curmin, score)
        }
        return (curmax, curmin)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

