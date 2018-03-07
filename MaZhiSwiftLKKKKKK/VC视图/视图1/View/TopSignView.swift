//
//  TopSignView.swift
//  MaZhiSwiftLKKKKKK
//
//  Created by saifing on 2018/3/2.
//  Copyright © 2018年 BKZ. All rights reserved.
//

import Foundation
import UIKit

class TopSignView: UIView {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        let imageView = UIImageView(image:UIImage(named:"4.3.1TopBackImage"))
        imageView.contentMode = .scaleAspectFill
        let imageHeightFloat = UIImage(named:"4.3.1TopBackImage")?.size.height
        _ = imageView.sd_layout().topSpaceToView(self,0)?.leftSpaceToView(self,0)?.rightSpaceToView(self,0)?.heightIs(imageHeightFloat!)
        self.addSubview(imageView)
        
        let dayLabel = UILabel()
        dayLabel.text = "31"
        dayLabel.textAlignment = .center
        dayLabel.font = UIFont.systemFont(ofSize: 30)
        dayLabel.backgroundColor = UIColor.white
        imageView.addSubview(dayLabel)
        _ = dayLabel.sd_layout().centerYEqualToView(imageView)?.centerXEqualToView(imageView)?.heightIs(120)?.widthIs(120)
        dayLabel.sd_cornerRadius = 60
        dayLabel.layer.borderWidth = 10
        dayLabel.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        
        let signLabel = UILabel()
        signLabel.text = "签到"
        signLabel.font = UIFont.systemFont(ofSize: 14)
        signLabel.textAlignment = .center
        signLabel.backgroundColor = UIColor.orange
        signLabel.textColor = UIColor.white
        imageView .addSubview(signLabel)
        _ = signLabel.sd_layout().topSpaceToView(dayLabel,-15)?.centerXEqualToView(imageView)?.widthIs(100)?.heightIs(30)
        signLabel.sd_cornerRadius = 2
        
        let remindLabel = UILabel()
        remindLabel.text = "连续签到30天,将会获得精美礼物"
        remindLabel.font = UIFont.systemFont(ofSize: 14)
        remindLabel.textAlignment = .center
        remindLabel.textColor = UIColor.darkGray
        self.addSubview(remindLabel)
        _ = remindLabel.sd_layout().topSpaceToView(imageView,0)?.leftSpaceToView(self,0)?.rightSpaceToView(self,0)?.heightIs(20)
        
        buildProessView(lastView: remindLabel)
        
    }

    
    func buildProessView(lastView:UIView?){
        
        let progressView = UIView()
        progressView.backgroundColor = UIColor.gray
        self.addSubview(progressView)
        _ = progressView.sd_layout()?.topSpaceToView(lastView,10)?.leftSpaceToView(self,0)?.rightSpaceToView(self,0)?.heightIs(50)
        
        let leftImageView = UIImageView(image:UIImage(named:"4.3.1finishaImage"))
        leftImageView.contentMode = .scaleAspectFill
        progressView.addSubview(leftImageView)
        
        _ = leftImageView.sd_layout().centerYEqualToView(progressView)?.leftSpaceToView(progressView,5)?.heightIs((UIImage(named:"4.3.1finishaImage")?.size.height)!)?.widthIs((UIImage(named:"4.3.1finishaImage")?.size.width)!)
        
        let titleLabel = UILabel()
        titleLabel.text = "任务完成度"
        titleLabel.textAlignment = .left
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        progressView.addSubview(titleLabel)
        _ = titleLabel.sd_layout().topSpaceToView(progressView,5)?.leftSpaceToView(leftImageView,10)?.autoHeightRatio(0)
        titleLabel.sd_maxWidth = 320
        
        let proNumberLabel = UILabel()
        proNumberLabel.text = "0%"
        proNumberLabel.font = UIFont.systemFont(ofSize: 14)
        proNumberLabel.textAlignment = .left
        proNumberLabel.textColor = UIColor.black
        progressView.addSubview(proNumberLabel)
        _ = proNumberLabel.sd_layout().centerYEqualToView(progressView)?.rightSpaceToView(progressView,10)?.heightIs(20)
        proNumberLabel.sd_maxWidth = 320
        
        let proView = UIView()
        proView.backgroundColor = UIColor.yellow
        progressView.addSubview(proView)
        _ = proView.sd_layout().bottomSpaceToView(progressView,10)?.heightIs(8)?.rightSpaceToView(proNumberLabel,5)?.leftSpaceToView(leftImageView,10)
        proView.sd_cornerRadius = 4
        
        self .setupAutoHeight(withBottomView: progressView, bottomMargin: 0)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
