//
//  FourView.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/3/2.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

class FourView: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white

        let leftTopImageView = UIImageView(image:UIImage(named:"4.3.1everyDayImage"))
        self.addSubview(leftTopImageView)
        _ = leftTopImageView.sd_layout().topSpaceToView(self , 10)?.leftSpaceToView(self,10)?.heightIs((UIImage(named:"4.3.1everyDayImage")?.size.height)!)?.widthIs((UIImage(named:"4.3.1everyDayImage")?.size.width)!)
        
        let topTitleLabel = UILabel()
        topTitleLabel.text = "每日干货"
        topTitleLabel.textAlignment = .left
        topTitleLabel.textColor = UIColor.black
        topTitleLabel.font = UIFont.systemFont(ofSize: 14)
        self.addSubview(topTitleLabel)
        _ = topTitleLabel.sd_layout().centerYEqualToView(leftTopImageView)?.leftSpaceToView(leftTopImageView,10)?.autoHeightRatio(0)
        topTitleLabel.sd_maxWidth = 320
        
        let firstLineView = UIView()
        firstLineView.backgroundColor = UIColor.black
        self.addSubview(firstLineView)
        _ = firstLineView.sd_layout().topSpaceToView(leftTopImageView , 10)?.leftSpaceToView(self , 0)?.rightSpaceToView(self,10)?.heightIs(1)

        var tempView = firstLineView
        
        let arrayList = ["专项体","真题库","错题库"]
        var currentNumber = 0
        
        for currentNumber in 0...(arrayList.count - 1) {
            
            let imageStr = "4.3.1CTKImage\(currentNumber+1)"
            
            let logoButton = UIButton()
            logoButton.setImage(UIImage(named:imageStr), for: UIControlState.normal)
            self.addSubview(logoButton)
            
            if currentNumber == 0{
                
                _ = logoButton.sd_layout().topSpaceToView(firstLineView , 10)?.centerXEqualToView(self)?.heightIs((UIImage(named:imageStr)?.size.height)!)?.widthIs((UIImage(named:imageStr)?.size.width)!)
            }else if currentNumber == 1{
                
                _ = logoButton.sd_layout().topSpaceToView(firstLineView , 10)?.leftSpaceToView(self,25)?.heightIs((UIImage(named:imageStr)?.size.height)!)?.widthIs((UIImage(named:imageStr)?.size.width)!)
            }else{
                
                _ = logoButton.sd_layout().topSpaceToView(firstLineView , 10)?.rightSpaceToView(self,25)?.heightIs((UIImage(named:imageStr)?.size.height)!)?.widthIs((UIImage(named:imageStr)?.size.width)!)
            }
            
            let titleLabel = UILabel()
            titleLabel.text = arrayList[currentNumber]
            titleLabel.textColor = UIColor.black
            titleLabel.textAlignment = .center
            titleLabel.font = UIFont.systemFont(ofSize: 14)
            self.addSubview(titleLabel)
            _ = titleLabel.sd_layout().topSpaceToView(logoButton,15)?.centerXEqualToView(logoButton)?.autoHeightRatio(0)
            titleLabel.sd_maxWidth = 320
            
            tempView = titleLabel
        }
        
        self .setupAutoHeight(withBottomView: tempView, bottomMargin: 10)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
