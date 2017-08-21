//
//  ReturnViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/21.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class ReturnViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var returnTableView: UITableView!
    
    @IBOutlet weak var amout_label: UILabel!
    var datas = [[1,100,"直接",1,"未还",100],
                [3,120,"分期",24,"未还",300],
                [3,120,"分期",24,"未还",300],
                [3,120,"分期",24,"未还",300],
                [3,120,"分期",24,"未还",300],
                [3,120,"分期",24,"未还",300],
                [3,120,"分期",24,"未还",300]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        returnTableView.delegate = self
        returnTableView.dataSource = self
        amout_label.text = "\(datas.count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "myCell"
        var cell:ReturnTableViewCell? = returnTableView.dequeueReusableCell(withIdentifier: identifier) as? ReturnTableViewCell
        if(cell == nil){
            cell = ReturnTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        }
        let data = datas[indexPath.row]
        cell?.repay_amount_label.text = "\(data[1])"
        cell?.repay_day_remain_label.text = "\(data[0])"
        cell?.repay_style_label.text = "\(data[2])"
        cell?.repay_lastday_remain_label.text = "\(data[3])"
        cell?.state_label.text = "\(data[4])"
        cell?.repay_need_all_remain_label.text = "\(data[5])"
        return cell!
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
