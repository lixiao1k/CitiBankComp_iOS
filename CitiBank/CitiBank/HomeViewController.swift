//
//  HomeViewController.swift
//  CitiBank
//
//  Created by Shelton Lee on 2017/8/20.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import SWRevealViewController

class HomeViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollPane: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var inv_plan_view: UIView_Button!
    @IBOutlet weak var bor_scat_view: UIView_Button!
    @IBOutlet weak var bor_fast_view: UIView_Button!
    @IBOutlet weak var inv_scat_view: UIView_Button!
    
    var images = [["name":"image1","pic":"guide0","url":"url1"],
                  ["name":"image2","pic":"guide1","url":"url2"],
                  ["name":"image3","pic":"guide2","url":"url3"]]
    var color = [UIColor.black,UIColor.blue,UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置内容总尺寸
        scrollPane.contentSize = CGSize(width: CGFloat(self.view.bounds.width) * CGFloat(self.images.count), height: CGFloat(self.view.bounds.height * 0.25))
        //关闭滚动条
        scrollPane.showsVerticalScrollIndicator = false
        scrollPane.showsHorizontalScrollIndicator = false
        scrollPane.scrollsToTop = false
        
        scrollPane.delegate = self
        //滚动时只能停留到某一页
        scrollPane.isPagingEnabled = true
        //添加页面到滚动面板
        let size = view.bounds.size
        for (seq,image) in images.enumerated(){
//            let imageView = UIImageView(image: UIImage(named: image["pic"]!))
//            imageView.frame = CGRect(x: CGFloat(seq) * size.width, y: 0, width: size.width, height: size.height)
//            scrollPane.addSubview(imageView);
            let view = UIView()
            view.frame = CGRect(x: CGFloat(seq) * size.width, y: 0, width: size.width, height: size.height)
            view.backgroundColor = color[seq]
            scrollPane.addSubview(view)
        }
        scrollPane.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        //页面控件
//      pageControl.backgroundColor = UIColor.clear
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        
        pageControl.addTarget(self, action: #selector(pageChanged(_sender:)), for: .valueChanged)
        //为自定义view添加监听
        inv_plan_view.addOnClickListener(target: self, action: #selector(goInvestPlan))
        inv_scat_view.addOnClickListener(target: self, action: #selector(goInvestScattered))
        bor_fast_view.addOnClickListener(target: self, action: #selector(goFastLoan))
        

        // Do any additional setup after loading the view.
        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = view.bounds.width * 0.8
            navigationItem.leftBarButtonItem?.target = revealVC
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //每次滚动结束后调用
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = Int(scrollPane.contentOffset.x / scrollPane.frame.size.width)
        pageControl.currentPage = page
    }
    
    // MARK: - 动作
    
    //点击页面控件时时间处理
    func pageChanged(_sender: UIPageControl){
        var frame = scrollPane.frame
        frame.origin.x = view.bounds.width * CGFloat(_sender.currentPage)
        frame.origin.y = 0
        //展现当前页面内容
        scrollPane.scrollRectToVisible(frame, animated: true)
        
    }
    
    //四个板块的监听方法
    func goInvestPlan() {
        let viewController = UIStoryboard(name:"Invest", bundle: nil).instantiateViewController(withIdentifier: "Invest_Plan") as UIViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func goInvestScattered(){
        let viewController = UIStoryboard(name: "Invest", bundle: nil).instantiateViewController(withIdentifier: "InvestScattered") as UIViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func goFastLoan() {
        let viewController = UIStoryboard(name: "Loan", bundle: nil).instantiateViewController(withIdentifier: "loan_fast") as UIViewController
        self.navigationController?.pushViewController(viewController, animated: true)
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
