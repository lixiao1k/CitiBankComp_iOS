//
//  Loan_Scatted_ViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/9/5.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import M13Checkbox
class Loan_Scatted_ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var loan_amount_tf: Picker_TextField!

    
    @IBOutlet weak var loan_duration_tf: Picker_TextField!
    
    @IBOutlet weak var interest_tf: Picker_TextField!
    
    @IBOutlet weak var agree: M13Checkbox!
    
    
    
    @IBAction func loan(_ sender: UIButton) {
    }
    
    
    var isAgreed: Bool = false
    var amount_data = [1,2,3,4,5,6]
    var time_data = [1,3,6,9,12]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let amount_pv = UIPickerView()
        amount_pv.delegate = self
        amount_pv.dataSource = self
        amount_pv.tag = 1
        loan_amount_tf.inputView = amount_pv
        
        let time_pv = UIPickerView()
        time_pv.delegate = self
        time_pv.dataSource = self
        time_pv.tag = 2
        loan_duration_tf.inputView = time_pv
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1{
            return amount_data.count
        }
        if pickerView.tag == 2{
            return time_data.count
        }
        return 0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return "\(amount_data[row])"
        }
        if pickerView.tag == 2 {
            return "\(time_data[row])"
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            loan_amount_tf.text = "\(amount_data[row])千元"
        }
        if pickerView.tag == 2 {
            loan_duration_tf.text = "\(time_data[row])个月"
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
