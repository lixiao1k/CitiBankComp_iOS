//
//  PayViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/24.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancel(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func pay(_ sender: UIButton) {
//        SweetAlert().showAlert("支付成功", subTitle:"祝贺您投资成功！", style: .success)
        SweetAlert().showAlert("支付失败", subTitle:"失败原因是您太帅了",style: .error)
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
