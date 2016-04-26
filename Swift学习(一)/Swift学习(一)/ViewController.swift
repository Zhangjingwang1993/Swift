//
//  ViewController.swift
//  Swift学习(一)
//
//  Created by zjwang on 16/3/14.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 可变数组
    var numbers = [1, 2, 3, 4, 5] // var 变
    // 不可变数组
    let genders = ["male", "female"] // let 不变
    var genders1:[String] = ["boy", "girl"];
    var hw = "hello, world"
    var dic = ["ios":"swfit", "coder":"I"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        print(numbers)
//        print(genders)
        
        
        let hello = hw.substringWithRange(Range<String.Index>(start: hw.startIndex, end: hw.startIndex.advancedBy(5)))  // "Hello"
//        let hello = hw.substringWithRange(<#T##aRange: Range<Index>##Range<Index>#>)
        print(hello)
        
        
        // (2)数组元素的个数和访问数组元素
        print("numbers 数组的长度: \(numbers.count) 数组的第一个值:\(numbers[0])")
        // 追加数组元素
        numbers.append(6)
        print("numbers 数组的长度: \(numbers.count) 数组的第一个值:\(numbers[5])")// 6 6
        // 使用加法赋值运算符(+=) 也可以在数组后面添加数组
        genders1+=["ios"]
        print("numbers 数组:\(genders1)") // 运行结果 : numbers 数组:["boy", "girl", "ios"]
        // 在某个位置插入元素, Swift 点语法
        genders1.insert("Objective-C", atIndex: 2)
        print("numbers 数组:\(genders1)") // 运行结果 : numbers 数组:["boy", "girl", "Objective-C", "ios"]
        // 删除元素, 注意 removeAtIndex() 是有返回值的，返回的就是删除的元素
        genders1.removeAtIndex(2)
        print("numbers 数组:\(genders1)") // 运行结果 : numbers 数组:["boy", "girl", "ios"]
        // 判断数组是否为空
        if genders1.isEmpty{
            print("null")
        }
        // 遍历数组
        for begin in genders1{
            print(begin)
        }
        // 或者
        for (index, value) in genders1.enumerate(){
            print("Item \(String(index + 1)): \(value)")
        }
        // 字典的打印 key : value
        print(dic)  // ["coder": "I", "ios": "swfit"]
        // 字典的访问 键对应的值
        let name = dic["ios"]
        print(name) // Optional("swfit")
        // 添加
        dic ["boy"] = "Zhang"
        print(dic)  // ["boy": "Zhang", "coder": "I", "ios": "swfit"]
        // 删除
        dic.removeValueForKey("boy")
        print(dic)  // ["coder": "I", "ios": "swfit"]
        // 修改
        dic.updateValue("Student", forKey: "coder")
        print(dic)  // ["coder": "Student", "ios": "swfit"]
        // 遍历字典
        for (key, value) in dic{
            print("key:\(key) value:\(value)")
        }
        // 或者
        for d in dic{
            print("key1:\(d.0) value1:\(d.1)")
        }
        // 也可以单独遍历key 和 value
        for key in dic.keys{
            print("Key= \(key)")
        }
        for value in dic.values{
            print("value= \(value)")
        }
        // 变量 使用var声明
        var str:String = "dd"
        str = "GG"
        print(str)
        // 常量 使用let声明
        let count:Int = 16
        print(count)
        // 整型
        // 无符号
//        Int, Int8, Int16, Int32, Int64
        // 浮点型
//        Float, Double
        // 布尔类型
//        Bool
        // 获取字符串的数量 // str = GG
        print(str.characters.count) // 2
        // 检查字符串是否有特定的前缀和后缀 pre/suf
        let sttPre = "hello.com"
        if sttPre.hasSuffix(".com33"){
            print("YES")
        }else{
            print("NO")
        }
        
        // 还可以"\()"
        let name1 = "helloworld"
        let msg = "Welcome to \(name1)"
        print(msg) // Welcome to helloworld
        
        // 大小写转换
        // 通过字符串的uppercaseString、lowercaseString、capitalizedString属性来访问一个字符串的大写/小写/首字母大写
        
        // 字符
        var char:Character = "$"
        print(char)
        
        // 元组
        let myCode = (one:"ZJwang", two:123)
        print("\(myCode.one)")
    }
    func printf(){
//        print()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

