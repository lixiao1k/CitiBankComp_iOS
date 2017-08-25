//
//  BDCellTableViewCell.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/24.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class BDCellTableViewCell: UITableViewCell {
    @IBOutlet weak var reason: UILabel!

    @IBOutlet weak var interest_year: UILabel!
    @IBOutlet weak var money: UILabel!
    
    @IBOutlet weak var duration: UILabel!
    
    @IBOutlet weak var repay_style: UILabel!
    
    @IBOutlet weak var proj_id: UILabel!
    
    @IBOutlet weak var create_date: UILabel!
    
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    
    @IBAction func invest(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
