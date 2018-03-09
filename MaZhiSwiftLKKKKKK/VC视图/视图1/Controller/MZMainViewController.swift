//
//  MZMainViewController.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/2/26.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class MZMainViewController: UIViewController,ChargeBgColorDelegate {
    
    
    fileprivate lazy var baseScrollView : UIScrollView={
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.gray
        scrollView.alwaysBounceVertical = true
        scrollView.alwaysBounceHorizontal = false
        scrollView.frame = CGRect(x: 0, y: 0, width: self.view.size.width, height: self.view.size.height)
        return scrollView
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.baseScrollView.backgroundColor = UIColor.gray
        self.view .addSubview(self.baseScrollView)
        
        baseScrollView.snp.makeConstraints { (make) in
            
            make.top.equalTo(10)
            make.bottom.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
        }
        
//        _ = baseScrollView.sd_layout().bottomSpaceToView(self.view, 0)?.topSpaceToView(self.view,0)?.leftSpaceToView(self.view,0)?.rightSpaceToView(self.view,0)
        
      //  buildTopView()
    }
    
    
    func buildTopView(){
        
        let topBaseView = TopSignView()
        baseScrollView .addSubview(topBaseView)
        _ = topBaseView.sd_layout().topSpaceToView(baseScrollView,0)?.leftSpaceToView(baseScrollView,0)?.rightSpaceToView(baseScrollView,0)
        buildSecondView(lastView: topBaseView)
        
    }
    
    func buildSecondView(lastView:UIView){
        
        let secView = SecondView()
        baseScrollView .addSubview(secView)
        _ = secView.sd_layout().topSpaceToView(lastView,10)?.leftSpaceToView(baseScrollView,0)?.rightSpaceToView(baseScrollView,0)
        buildThiedView(lastView: secView)
    }
    
    func buildThiedView(lastView:UIView){
        
        let tirView = ThirdView()
        baseScrollView .addSubview(tirView)
        _ = tirView.sd_layout().topSpaceToView(lastView,10)?.leftSpaceToView(baseScrollView,0)?.rightSpaceToView(baseScrollView,0)
        buildFourView(lastView: tirView)
    }
    
    func buildFourView(lastView:UIView){
        
        let fView = FourView()
        baseScrollView .addSubview(fView)
        _ = fView.sd_layout().topSpaceToView(lastView,10)?.leftSpaceToView(baseScrollView,0)?.rightSpaceToView(baseScrollView,0)
        
        baseScrollView .setupAutoContentSize(withBottomView: fView, bottomMargin: 20)
    }
    
    @objc func actionAnimaion(){
        
        self.view.backgroundColor = UIColor.gray
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
