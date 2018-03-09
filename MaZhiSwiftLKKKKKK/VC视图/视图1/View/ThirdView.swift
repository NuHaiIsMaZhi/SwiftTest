//
//  ThirdView.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/3/2.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

class ThirdView: UIView {
    
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
        
        let rightMoreButton = UIButton()
        rightMoreButton .setTitle("More", for: UIControlState.normal)
        rightMoreButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        rightMoreButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        self.addSubview(rightMoreButton)
        _ = rightMoreButton.sd_layout().centerYEqualToView(leftTopImageView)?.rightSpaceToView(self,10)?.heightIs(20)?.widthIs(40)
        
        let firstLineView = UIView()
        firstLineView.backgroundColor = UIColor.black
        self.addSubview(firstLineView)
        _ = firstLineView.sd_layout().topSpaceToView(leftTopImageView , 10)?.leftSpaceToView(self , 0)?.rightSpaceToView(self,10)?.heightIs(1)
        
        let titleLabel = UILabel()
        titleLabel.text = "考研英语:一天背多少单词合适"
        titleLabel.textAlignment = .left
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        self.addSubview(titleLabel)
        _ = titleLabel.sd_layout().topSpaceToView(firstLineView,10)?.leftSpaceToView(self,10)?.autoHeightRatio(0)
        titleLabel.sd_maxWidth = 320
        
        let contentLabel = UILabel()
        contentLabel.text = "现在备考族考研英语精品小班的同学每天记单词的量在150个左右.一般来说,需要一天背100个..."
        contentLabel.textAlignment = .left
        contentLabel.textColor = UIColor.black
        contentLabel.font = UIFont.systemFont(ofSize: 14)
        self.addSubview(contentLabel)
        _ = contentLabel.sd_layout().topSpaceToView(titleLabel,10)?.leftSpaceToView(self,10)?.autoHeightRatio(0)?.rightSpaceToView(self, 10)
        self .setupAutoHeight(withBottomView: contentLabel, bottomMargin: 10)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

