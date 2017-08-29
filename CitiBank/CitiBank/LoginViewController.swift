//
//  LoginViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/29.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func login(_ sender: UIButton) {
        self.performSegue(withIdentifier: "login", sender: self)
    }
    
    
    @IBAction func logUp(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "logUp", sender: self)
        
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
