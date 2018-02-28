//
//  MZClassViewController.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/2/26.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

protocol ChargeBgColorDelegate:NSObjectProtocol {
    
    func chareColor()
}
typealias closureBlock = (NSArray) -> Void

class MZClassViewController: UIViewController {
    
    var delegate:ChargeBgColorDelegate?
    var postValueBlock:closureBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.black
      
        let textButton:UIButton = UIButton()
        textButton.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        textButton.backgroundColor = UIColor.blue
        textButton.addTarget(self, action: #selector(actionAnimaion), for: UIControlEvents.touchUpInside)
        self.view .addSubview(textButton)
    }
    
    @objc func actionAnimaion(){
        
        if ((delegate) != nil){
            
            delegate?.chareColor()
            self.navigationController?.popViewController(animated: true)
        }
        
        let arr = ["name","jeck"]
        
        let postddValueBlock = postValueBlock
        if postddValueBlock != nil {
            
            postddValueBlock!(arr as NSArray)
        }
//        guard let postddValueBlock = postValueBlock else {
//
//            return
//        }
//        postddValueBlock(arr as NSArray)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
