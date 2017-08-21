//
//  ReturnTableViewCell.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/21.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class ReturnTableViewCell: UITableViewCell {

    @IBOutlet weak var repay_day_remain_label: UILabel!
    @IBOutlet weak var repay_style_label: UILabel!
    
    
    @IBOutlet weak var state_label: UILabel!
    
    @IBOutlet weak var repay_amount_label: UILabel!
    

    @IBOutlet weak var repay_lastday_remain_label: UILabel!
    
    @IBOutlet weak var repay_need_all_remain_label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
