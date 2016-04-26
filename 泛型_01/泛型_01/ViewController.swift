//
//  ViewController.swift
//  泛型_01
//
//  Created by zjwang on 16/4/25.
//  Copyright © 2016年 夏天. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.printfChars()
        let oneInch = 25.4.mm
        print("One inch is \(oneInch) meters") // One inch is 0.0254 meters
        
        let dou = 23.4.sq
        print("\(dou)")
        
        let numbers = [1,2,4,5,6,3,0,-54,-65]
        self.printIntegerKinds(numbers)
        
        var intNumb = 5
        intNumb.square()
        print("\(intNumb)")
        
        self.printfChars()
        
    }
    // 该例子为 Int 添加了嵌套枚举。这个名为 Kind 的枚举表示特定整数的类型。具体来说，就是表示整数是正数、零或者负数。
    // 这个例子还为 Int 添加了一个计算型实例属性，即 kind，用来根据整数返回适当的 Kind 枚举成员。
    // 现在，这个嵌套枚举可以和任意 Int 值一起使用了：
    
    func printIntegerKinds(numbers: [Int]) {
        for number in numbers {
            switch number.kind {
            case .Negative:
                print("- ", terminator: "")
            case .Zero:
                print("0 ", terminator: "")
            case .Positive:
                print("+ ", terminator: "")
            }
        }
        print("")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
// 嵌套类型（Nested Types）
// 扩展可以为已有的类、结构体和枚举添加新的嵌套类型：
extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}




// 可以为系统类型添加方法 还可以为自定义类型添加方法
// 为 UIViewController 添加新功能
extension UIViewController {
    // 为 UIViewController 添加的新功能写到这里
}
// like this
extension ViewController{
    
    func printfChars()
    {
        print("I am a char")
    }
}
// 为 Double 添加新的功能
extension Double {
    var km: Double { return self * 1_000.0 }
    var m : Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
    var sq: Double { return self * self }
    
}
// 为 Int
// 可变实例方法（Mutating Instance Methods）

// 通过扩展添加的实例方法也可以修改该实例本身。结构体和枚举类型中修改 self 或其属性的方法必须将该实例方法标注为 mutating，正如来自原始实现的可变方法一样。

// 下面的例子为 Swift 的 Int 类型添加了一个名为 square 的可变方法，用于计算原始值的平方值：
extension Int {
    mutating func square() {
        self = self * self
    }
}