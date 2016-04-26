//
//  ViewController.swift
//  Swift_枚举
//
//  Created by zjwang on 16/4/15.
//  Copyright © 2016年 夏天. All rights reserved.
//

import UIKit

enum Gender{
    case Male
    case Female
}
// or
//enum Gender{
//    case WifeType, WlanType
//}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let gType = Gender.Male
        switch gType{
        case .Male:
            print("male")
        case .Female:
            print("female")
        default: break
            
    }
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Swift 中的枚举非常灵活，不必给每一个枚举成员提供一个值。如果给枚举成员提供一个值（称为“原始”值），则该值的类型可以是字符串，字符，或是一个整型值或浮点数。
    // 在 Swift 中，枚举类型是一等（first-class）类型。它们采用了很多在传统上只被类（class）所支持的特性，例如计算型属性（computed properties），用于提供枚举值的附加信息，实例方法（instance methods），用于提供和枚举值相关联的功能。枚举也可以定义构造函数（initializers）来提供一个初始值；可以在原始实现的基础上扩展它们的功能；还可以遵守协议（protocols）来提供标准的功能
    
    // 以上是github上非常赞的开源项目, 对Swift枚举的解释
    // 值得注意的是: 与 C 和 Objective-C 不同，Swift 的枚举成员在被创建时不会被赋予一个默认的整型值
    // `RequsetType` 中 的`GetType`, `PostType` 没有被赋值为 `0` `1`.
    
}

