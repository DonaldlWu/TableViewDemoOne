//
//  CustomizeTableViewCell.swift
//  tableViewDemo
//
//  Created by 吳得人 on 2017/10/9.
//  Copyright © 2017年 吳得人. All rights reserved.
//

import UIKit

class CustomizeTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentOneLabel: UILabel!
    @IBOutlet weak var contentTwoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
