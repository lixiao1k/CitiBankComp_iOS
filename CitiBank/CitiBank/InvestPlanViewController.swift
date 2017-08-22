//
//  InvestPlanViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/22.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class InvestPlanViewController: UIViewController {

    @IBOutlet weak var invest_amount_tf: Picker_TextField!
    
    @IBOutlet weak var invest_time_tf: Picker_TextField!
    
    @IBOutlet weak var amount_pv: UIPickerView!
    
    @IBOutlet weak var time_pv: UIPickerView!
    
    var test: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        invest_amount_tf.addTarget(self, action: #selector(print1), for:UIControlEvents.editingDidBegin)
        
        test = UIPickerView()
        invest_amount_tf.inputView = test
        
    }
    func print1()  {
        
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
