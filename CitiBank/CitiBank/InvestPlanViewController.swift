//
//  InvestPlanViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/22.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import M13Checkbox

class InvestPlanViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var invest_amount_tf: Picker_TextField!
    
    @IBOutlet weak var invest_time_tf: Picker_TextField!
    
    @IBOutlet weak var agree_label: UILabel!
    
    var amount_data = [1,2,3,4,5,6,7,8,9]
    var time_data = [1,3,6,9,12]
    var checkMark: Bool! //判断是否同意协议
    
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let amount_pv = UIPickerView()
        amount_pv.delegate = self
        amount_pv.dataSource = self
        amount_pv.tag = 1
        invest_amount_tf.inputView = amount_pv
        
        let time_pv = UIPickerView()
        time_pv.delegate = self
        time_pv.dataSource = self
        time_pv.tag = 2
        invest_time_tf.inputView = time_pv
        
        //点击空白处隐藏pickerview
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard(tapG:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return amount_data.count
        }
        if pickerView.tag == 2 {
            return time_data.count
        }
        return 0
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
            invest_amount_tf.text = "\(amount_data[row])千元"
        }
        if pickerView.tag == 2 {
            invest_time_tf.text = "\(time_data[row])个月"
        }
    }
    
    func hideKeyboard(tapG:UITapGestureRecognizer)  {
        self.view.endEditing(true)
    }
    // MARK: - Actions
    
    @IBAction func checkTypeChanged(_ sender: M13Checkbox) {
        if sender.checkState == .checked{
            self.checkMark = true
        }
        if sender.checkState == .unchecked{
            self.checkMark = false
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
