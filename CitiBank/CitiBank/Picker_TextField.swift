//
//  Picker_TextField.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/22.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class Picker_TextField: UITextField,UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("hel")
        return true
    }
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("hello")
//    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("ddd")
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("helloo")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
