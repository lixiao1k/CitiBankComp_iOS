//
//  Loan_Fast_ViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/9/5.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class Loan_Fast_ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var interst_introduction: UITextView!
    
    @IBOutlet weak var loan_money: Picker_TextField!
    
    @IBOutlet weak var limit_remain: UILabel!
    
    @IBOutlet weak var duration: Picker_TextField!
    
    @IBOutlet weak var loan_reason: UITextView!
    @IBOutlet weak var loan_btn: UIButton!
    
    @IBAction func loan(_ sender: UIButton) {
        SweetAlert().showAlert("成功", subTitle:"借款成功",style: .success)
    }
    var amount_data = [1,2,3,4,5,6,7]
    var time_data = [1,3,6,9,12]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard(tapG:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
        let amount_pv = UIPickerView()
        amount_pv.delegate = self
        amount_pv.dataSource = self
        amount_pv.tag = 1
        loan_money.inputView = amount_pv
        
        let time_pv = UIPickerView()
        time_pv.delegate = self
        time_pv.dataSource = self
        time_pv.tag = 2
        duration.inputView = time_pv
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        scrollview.contentSize.height = 800
        scrollview.delaysContentTouches = false
    }
    
    func hideKeyboard(tapG:UITapGestureRecognizer)  {
        self.view.endEditing(true)
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
            return String(amount_data[row])
        }
        if pickerView.tag == 2 {
            return String(time_data[row])
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            loan_money.text = "\(amount_data[row])千元"
        }
        if pickerView.tag == 2 {
            duration.text = "\(time_data[row])个月"
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
