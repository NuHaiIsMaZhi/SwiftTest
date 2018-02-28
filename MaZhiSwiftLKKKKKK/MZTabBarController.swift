//
//  MZTabBarController.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/2/26.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

class MZTabBarController:UITabBarController{
    
    var backView:UIView? = nil
    var items:NSArray? = []
    let NameArr = ["首页","分类","购物车","我的"]
    let PicArr = ["main","grid","card","me"]
    let PicSelectArr = ["main_blue","gird_blue","card_blud","me_blue"]
    let VCArr = [MZMainViewController(),MZClassViewController(),MZCartViewController(),MZMyViewController()]
    var NavArr:[NSObject] = [NSObject]()
    var nav:UINavigationController = UINavigationController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CreatTabBar()
    }

    func CreatTabBar(){
        
        backView = UIView(frame:CGRect(x:0,y:0,width:self.view.frame.size.width,height:49))
        
        let MainVC = MZMainViewController()
        MainVC.title = "首页"
        let MainNav = UINavigationController(rootViewController:MainVC)
        MainNav.tabBarItem.title = "首页"
        MainNav.tabBarItem.image = UIImage(named:"main")
        MainNav.tabBarItem.selectedImage = UIImage(named:"main_blue")
        
        let  ClassVC  = MZClassViewController()
        ClassVC.title = "分类"
        let ClassNav = UINavigationController(rootViewController:ClassVC)
        ClassNav.tabBarItem.title = "分类"
        ClassNav.tabBarItem.image = UIImage(named:"grid")
        ClassNav.tabBarItem.selectedImage = UIImage(named:"grid_blue")
        
        let  CartVC  = MZCartViewController()
        CartVC.title = "购物车"
        let CartNav = UINavigationController(rootViewController:CartVC)
        CartNav.tabBarItem.title = "购物车"
        CartNav.tabBarItem.image = UIImage(named:"cart")
        CartNav.tabBarItem.selectedImage = UIImage(named:"cart_blue")
        
        let  MyVC  = MZMyViewController()
        MyVC.title = "我的"
        let MyNav = UINavigationController(rootViewController:MyVC)
        MyNav.tabBarItem.title = "我的"
        MyNav.tabBarItem.image = UIImage(named:"me")
        MyNav.tabBarItem.selectedImage = UIImage(named:"me_blue")

        items = [MainNav,ClassNav,CartNav,MyNav]
        self.viewControllers = items as? [UIViewController]

        //tabBar 底部工具栏背景颜色 (以下两个都行)
        self.tabBar.barTintColor = UIColor.orange
        self.tabBar.backgroundColor = UIColor.brown
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
