//
//  TableViewCell.swift
//  Swift_UITableView
//
//  Created by zjwang on 16/3/16.
//  Copyright © 2016年 Zhangjingwang. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        self.creteCell()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var titleLabel:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    func creteCell()
    {
        titleLabel = UILabel.init(frame: CGRectMake(0, 0, 300, 20))
        titleLabel?.backgroundColor = UIColor.cyanColor()
        self.addSubview(titleLabel!)
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
