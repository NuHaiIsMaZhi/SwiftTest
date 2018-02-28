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
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let textButton:UIButton = UIButton()
        textButton.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        textButton.backgroundColor = UIColor.blue
        textButton.addTarget(self, action: #selector(actionAnimaion), for: UIControlEvents.touchUpInside)
        self.view .addSubview(textButton)
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
