//
//  ViewController.swift
//  Swift_UITableView
//
//  Created by zjwang on 16/3/16.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableViewself = UITableView()
    var arrayData = ["cell1", "cell2", "cell3", "cell4", "cell5"]
    var buttonRight = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        createTableview()
        createRightBarButtonItem()
    }
    // 加右边的按钮
    func createRightBarButtonItem()
    {
        buttonRight = UIButton.init(type: UIButtonType.Custom)
        buttonRight.frame = CGRectMake(0, 0, 40, 40)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: buttonRight)
        buttonRight.setTitle("Edit", forState: UIControlState.Normal)
        buttonRight.addTarget(self, action: Selector("jion:"), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    func jion(sender: UIButton)
    {
        sender.selected = !sender.selected
        
        if sender.selected == true{
            tableViewself .setEditing(true, animated: true)
        }else{
            tableViewself .setEditing(false, animated: true)

        }
    }
    func createTableview(){
        tableViewself = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.Plain)
        self.view.addSubview(tableViewself)
        tableViewself.delegate = self
        tableViewself.dataSource = self
        // 注册
        tableViewself.registerClass(TableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = TableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: "cellId")
        cell.titleLabel?.text = "自定义cell"
        return cell
    }
    // 删除一行
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        let index = indexPath.row as Int
        arrayData.removeAtIndex(index)
        tableViewself.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Top)
        
    }
    // 选择一行
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let alter = UIAlertView()
        alter.title = "提示"
        alter.message = "您选择的是:\(arrayData[indexPath.row])"
        alter.addButtonWithTitle("OK")
        alter.show()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

