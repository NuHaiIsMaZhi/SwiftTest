//
//  MZMainViewController.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/2/26.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

class MZMainViewController: UIViewController,ChargeBgColorDelegate {
    
    
    var baseScrollView = UIScrollView()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        baseScrollView = UIScrollView()
        baseScrollView.backgroundColor = UIColor.red
        baseScrollView.alwaysBounceVertical = true
        baseScrollView.alwaysBounceHorizontal = true
        baseScrollView.contentSize = CGSize(width: 0, height: self.view.frame.size.height + 100)
        self.view .addSubview(baseScrollView)
        _ = baseScrollView.sd_layout().bottomSpaceToView(self.view, 0)?.topSpaceToView(self.view,0)?.leftSpaceToView(self.view,0)?.rightSpaceToView(self.view,0)
        
        buildTopView()
    }
    
    func buildTopView(){
        
        let topBaseView = UIView()
        topBaseView.backgroundColor = UIColor.yellow
        baseScrollView .addSubview(topBaseView)
        _ = topBaseView.sd_layout().topSpaceToView(baseScrollView,0)?.leftSpaceToView(baseScrollView,0)?.rightSpaceToView(baseScrollView,0)?.heightIs(200)
    }
    
    func buildSecondView(){
        
        let secondView = UIView()
        secondView.backgroundColor = UIColor.yellow
        baseScrollView .addSubview(secondView)
        _ = secondView.sd_layout().topSpaceToView(baseScrollView,0)?.leftSpaceToView(baseScrollView,0)?.rightSpaceToView(baseScrollView,0)?.heightIs(200)
    }
    
    @objc func actionAnimaion(){
        
        self.view.backgroundColor = UIColor.white
        let classVC = MZClassViewController()
        classVC.delegate = self
        
        classVC.postValueBlock = {(arr) in
            
            print(arr)
            self.view.backgroundColor = UIColor.orange
        }
        
        self.navigationController?.pushViewController(classVC, animated: true)
    }
    
    func chareColor() {
        
        //self.view.backgroundColor = UIColor.orange
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
