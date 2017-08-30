//
//  ActivateViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/30.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import SWRevealViewController

class ActivateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let revealVC = revealViewController() {
//            revealVC.rearViewRevealWidth = view.bounds.width * 0.8
//            navigationItem.leftBarButtonItem?.target = revealVC
//            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
//            view.addGestureRecognizer(revealVC.panGestureRecognizer())
//        }
        navigationItem.leftBarButtonItem?.target = self
        navigationItem.leftBarButtonItem?.action = #selector(back)
        // Do any additional setup after loading the view.
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
