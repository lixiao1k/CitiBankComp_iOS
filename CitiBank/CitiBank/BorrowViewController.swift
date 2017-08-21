//
//  BorrowViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/21.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class BorrowViewController: UIViewController {

    @IBOutlet weak var bor_amount_label: UILabel!
    
    @IBOutlet weak var limit_label: UILabel!
    
    @IBOutlet weak var bor_scat_view: UIView!
    @IBOutlet weak var bor_fast_view: UIView!
    
    @IBOutlet weak var return_wait_view: UIView!
    
    @IBOutlet weak var return_record_view: UIView!
    
    @IBOutlet weak var hit_wait_view: UIView!
    
    @IBAction func activate(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
