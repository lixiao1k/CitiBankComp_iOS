//
//  LogUpViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/30.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class LogUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logUp(_ sender: UIButton) {
        SweetAlert().showAlert("成功", subTitle: "注册成功", style: .success, buttonTitle: "确定") { (ok) ->Void in
            if ok == true {
                self.performSegue(withIdentifier: "logUp2In", sender: self)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
