//
//  ViewController.swift
//  Swift_UI(四)
//
//  Created by zjwang on 16/3/16.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 创建label
        createSubviewsOfLabel()
        
        label.text = "this is a new String"
        label.textColor = UIColor.blueColor()
        
        
        // 创建button
        createSubviewsOfButton()
    }
    func createSubviewsOfLabel()
    {
        // 创建Label, 之后设置frame
        
        label.frame = CGRectMake(10, 10, 150, 20)
        self.view.addSubview(label)
        
        
        let label1 = UILabel(frame: CGRectMake(10, 50, 150, 20))
        self.view.addSubview(label1)
        
        // 属性的设置跟OC基本类似
        label.text = "This is a Label";
        label.textColor = UIColor.yellowColor()
        label.font = UIFont.systemFontOfSize(14)
        
        label1.backgroundColor = UIColor.clearColor()
        
        // 创建富文本
        let attrString = NSMutableAttributedString(string: "This is a attrString")
        
        // 设置字体的大小
        attrString.addAttribute(NSFontAttributeName, value: UIFont.systemFontOfSize(20), range: NSMakeRange(2, 5))
        
        // 设置字体的颜色
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(2, 5))
        
        // 这只下划线
        attrString.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.StyleSingle.rawValue, range: NSMakeRange(2, 5))
        
        label1.attributedText = attrString
    }
    func createSubviewsOfButton()
    {
        // 创建
        let button = UIButton.init(type: UIButtonType.Custom)
        // 还可以这样 let button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(10, 80, 150, 50)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle("iambutton", forState: UIControlState.Normal)
        button.addTarget(self, action: Selector("click:"), forControlEvents: UIControlEvents.TouchUpInside)
        button.layer.cornerRadius = 5
        self.view.addSubview(button)
        
    }
    func click(button:UIButton)
    {
        print("点击")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

