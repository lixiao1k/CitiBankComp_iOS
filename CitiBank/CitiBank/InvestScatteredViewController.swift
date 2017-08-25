//
//  InvestScatteredViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/24.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import TwicketSegmentedControl
//

class InvestScatteredViewController: UIViewController,TwicketSegmentedControlDelegate,UITableViewDelegate,UITableViewDataSource{
    
    var data_disposable = [["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                           ["还款原因还款原因还款原因",20000,2.0,6,"直接"]]
    var data_time = [["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                    ["还款原因还款原因还款原因",20000,2.0,6,"分期"]]
    var data_recommend = [["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"直接"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"分期"],
                         ["还款原因还款原因还款原因",20000,2.0,6,"直接"]]

    var volume = 0
    
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let titles = ["一期", "分期", "推荐"]
        let frame = CGRect(x: 5, y: view.frame.height / 7 - 20, width: view.frame.width - 10, height: 40)
        
        let segmentedControl = TwicketSegmentedControl(frame: frame)
        segmentedControl.setSegmentItems(titles)
        segmentedControl.delegate = self
        
        view.addSubview(segmentedControl)
        tableview.delegate = self
        tableview.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didSelect(_ segmentIndex: Int) {
        volume = segmentIndex
        self.tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if volume == 0 {
            return data_disposable.count
        }
        if volume == 1 {
            return data_time.count
        }
        if volume == 2 {
            return data_recommend.count
        }
        return data_disposable.count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
        var cell: BDCellTableViewCell? = tableView.dequeueReusableCell(withIdentifier: identifier) as? BDCellTableViewCell
        if (cell == nil){
            cell = BDCellTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier)
        }
        if volume == 0 {
            let data = data_disposable[indexPath.row]
            cell?.reason.text = "\(data[0])"
            cell?.money.text = "\(data[1])"
            cell?.interest_year.text = "\(data[2])%"
            cell?.duration.text = "\(data[3])"
            cell?.repay_style.text = "\(data[4])"
            cell?.proj_id.text = "2345678"
            cell?.create_date.text = "2017.7.24"
        }
        if volume == 1{
            let data = data_time[indexPath.row]
            cell?.reason.text = "\(data[0])"
            cell?.money.text = "\(data[1])"
            cell?.interest_year.text = "\(data[2])%"
            cell?.duration.text = "\(data[3])"
            cell?.repay_style.text = "\(data[4])"
            cell?.proj_id.text = "2345678"
            cell?.create_date.text = "2017.7.24"
        }
        if volume == 2 {
            let data = data_recommend[indexPath.row]
            cell?.reason.text = "\(data[0])"
            cell?.money.text = "\(data[1])"
            cell?.interest_year.text = "\(data[2])%"
            cell?.duration.text = "\(data[3])"
            cell?.repay_style.text = "\(data[4])"
            cell?.proj_id.text = "2345678"
            cell?.create_date.text = "2017.7.24"
        }
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = UIStoryboard(name:"Invest", bundle: nil).instantiateViewController(withIdentifier: "pay") as UIViewController
        navigationController?.pushViewController(viewController, animated: true)
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
