
//
//  SecondView.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/3/2.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

class SecondView: UIView {
    
    let cireView = FFView.init(frame: CGRect(x:10,y:80,width:100,height:100))

    let cireView2 = FFView.init(frame: CGRect(x:10,y:80,width:100,height:100))

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        
        
        let leftImageView = UIImageView(image:UIImage(named:"4.3.1todayRWImage"))
        leftImageView.contentMode = .scaleAspectFill
        self.addSubview(leftImageView)
        _ = leftImageView.sd_layout().topSpaceToView(self,10)?.leftSpaceToView(self,10)?.heightIs((UIImage(named:"4.3.1todayRWImage")?.size.height)!)?.widthIs((UIImage(named:"4.3.1todayRWImage")?.size.width)!)
        
        let topLabel = UILabel()
        topLabel.text = "今日签到"
        topLabel.font = UIFont.systemFont(ofSize: 14)
        topLabel.textAlignment = .center
        topLabel.textColor = UIColor.black
        self.addSubview(topLabel)
        _ = topLabel.sd_layout().centerYEqualToView(leftImageView)?.leftSpaceToView(leftImageView,5)?.autoHeightRatio(0)
        topLabel.sd_maxWidth = 320
        
        let rightImageView = UIImageView(image:UIImage(named:"setEveryImage"))
        rightImageView.contentMode = .scaleAspectFill
        self.addSubview(rightImageView)
        _ = rightImageView.sd_layout().centerYEqualToView(leftImageView)?.rightSpaceToView(self,10)?.heightIs((UIImage(named:"setEveryImage")?.size.height)!)?.widthIs((UIImage(named:"setEveryImage")?.size.width)!)
        
        let firtstLineView = UIView()
        firtstLineView.backgroundColor = UIColor.black
        self.addSubview(firtstLineView)
        _ = firtstLineView.sd_layout().topSpaceToView(leftImageView,10)?.leftSpaceToView(self,0)?.rightSpaceToView(self,0)?.heightIs(1)
        
        let secondLabel = UILabel()
        secondLabel.text = "记单词"
        secondLabel.font = UIFont.systemFont(ofSize: 14)
        secondLabel.textAlignment = .center
        secondLabel.textColor = UIColor.black
        self.addSubview(secondLabel)
        _ = secondLabel.sd_layout().topSpaceToView(firtstLineView,10)?.leftSpaceToView(self,10)?.autoHeightRatio(0)
        secondLabel.sd_maxWidth = 320
        
        self.addSubview(cireView)
        self.cireView.value = 90
        self.cireView.maximumValue = 2
        self.cireView.frame = CGRect(x:10,y:80,width:100,height:100)
        _ = self.cireView.sd_layout().topSpaceToView(secondLabel,15)?.leftSpaceToView(self,40)?.widthIs(120)?.heightIs(120)
        
        self.addSubview(cireView2)
        self.cireView2.value = 90
        self.cireView2.maximumValue = 2
        self.cireView2.frame = CGRect(x:10,y:80,width:100,height:100)
       _ = self.cireView2.sd_layout().topSpaceToView(secondLabel,15)?.rightSpaceToView(self,40)?.widthIs(120)?.heightIs(120)
      
        let proLeftLabel = UILabel()
        proLeftLabel.text = "单词"
        proLeftLabel.font = UIFont.systemFont(ofSize: 14)
        proLeftLabel.textColor = UIColor.black
        proLeftLabel.textAlignment = .center
        self.addSubview(proLeftLabel)
        _ = proLeftLabel.sd_layout().topSpaceToView(self.cireView , 10)?.centerXEqualToView(self.cireView)?.autoHeightRatio(0)
        proLeftLabel.sd_maxWidth = 320
        
        let proRightLabel = UILabel()
        proRightLabel.text = "词汇"
        proRightLabel.font = UIFont.systemFont(ofSize: 14)
        proRightLabel.textColor = UIColor.black
        proRightLabel.textAlignment = .center
        self.addSubview(proRightLabel)
        _ = proRightLabel.sd_layout().topSpaceToView(self.cireView2 , 10)?.centerXEqualToView(self.cireView2)?.autoHeightRatio(0)
        proRightLabel.sd_maxWidth = 320
        
        let lineView = UIView()
        lineView.backgroundColor = UIColor.black
        self.addSubview(lineView)
        _ = lineView.sd_layout().topSpaceToView(proLeftLabel,15)?.leftSpaceToView(self,0)?.rightSpaceToView(self,0)?.heightIs(1)
        
        let listArray :[String] = ["语法练习","听力练习","晨读题","阅读逻辑练习","真题题型分类练习"]
      
        let valueArray :[String] = ["哈哈哈","呵呵呵","嘻嘻嘻","吼吼吼","唧唧唧"]
        
        var currentNumber = 0
        
        var tempView = lineView
        
        
        for currentNumber in 0...(listArray.count - 1){
            
            let leftValue = listArray[currentNumber]
            let rightValue = valueArray[currentNumber]
            
            let leftTitleLabel = UILabel()
            leftTitleLabel.text = leftValue
            leftTitleLabel.font = UIFont.systemFont(ofSize: 14)
            leftTitleLabel.textColor = UIColor.black
            leftTitleLabel.textAlignment = .center
            self.addSubview(leftTitleLabel)
            _ = leftTitleLabel.sd_layout().topSpaceToView(tempView , 15)?.leftSpaceToView(self , 10)?.autoHeightRatio(0)
            leftTitleLabel.sd_maxWidth = 320
            
            let rightValueLabel = UILabel()
            rightValueLabel.text = rightValue
            rightValueLabel.font = UIFont.systemFont(ofSize: 14)
            rightValueLabel.textColor = UIColor.black
            rightValueLabel.textAlignment = .center
            self.addSubview(rightValueLabel)
            _ = rightValueLabel.sd_layout().topSpaceToView(tempView , 15)?.rightSpaceToView(self , 10)?.autoHeightRatio(0)
            rightValueLabel.sd_maxWidth = 320
            
            let queLineView = UIView()
            queLineView.backgroundColor = UIColor.black
            self.addSubview(queLineView)
            _ = queLineView.sd_layout().topSpaceToView(rightValueLabel, 10)?.leftSpaceToView(self,10)?.rightSpaceToView(self,10)?.heightIs(1)
            
            
            tempView = queLineView
        }
        
        
        self .setupAutoHeight(withBottomView: tempView, bottomMargin: 10)
    }
    
    @objc func wangmumu(){
        
        self.cireView.value += 0.2
        
        if self.cireView.value > 90 {return}
        
        self.perform(#selector(self.wangmumu), with: self, afterDelay: 0.02)
    }
    @objc func wangmumu2(){
        
        self.cireView2.value += 0.2
        
        if self.cireView2.value > 90 {return}
        
        self.perform(#selector(self.wangmumu), with: self, afterDelay: 0.02)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
