//
//  UIView_Button.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/22.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class UIView_Button: UIView {
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        backgroundColor = UIColor.groupTableViewBackground
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.15, animations: { () -> Void in
            self.backgroundColor = UIColor.clear
        })
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.15, animations: { () -> Void in
            self.backgroundColor = UIColor.clear
        })
    }
    
    
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension UIView{
    func addOnClickListener(target: AnyObject, action: Selector) {
        let gr = UITapGestureRecognizer(target: target, action: action)
        gr.numberOfTapsRequired = 1
        isUserInteractionEnabled = true
        addGestureRecognizer(gr)
    }
}


