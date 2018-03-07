
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
        topLabel.sd_maxWidth = 320
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
