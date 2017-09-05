//
//  IdentifyViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/30.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit

class IdentifyViewController: UIViewController {
    
    
    @IBOutlet weak var container1: UIView!
    
    @IBOutlet weak var container2: UIView!
    
    var progress = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard(tapG:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        

        // Do any additional setup after loading the view.
        navigationItem.leftBarButtonItem?.target = self
        navigationItem.leftBarButtonItem?.action = #selector(back)
        container1.isHidden = false
        container2.isHidden = true
        
    }
    
    @IBAction func identify(_ sender: UIButton) {
        if container1.isHidden {
            container1.isHidden = false
            container2.isHidden = true
        }else{
            container1.isHidden = true
            container2.isHidden = false
        }
    }
    
    func hideKeyboard(tapG:UITapGestureRecognizer)  {
        self.view.endEditing(true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func back() {
        let viewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "Home") as UIViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
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
