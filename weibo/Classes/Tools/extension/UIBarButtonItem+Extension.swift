//
//  UIBarButtonItem+Extension.swift
//  weibo
//
//  Created by Mac on 2020/4/15.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit


extension UIBarButtonItem {
    
    ///
    ///
    /// - parameter title:    标题
    /// - parameter fontSize: 字体大小  默认16
    /// - parameter target:
    /// - parameter action:
    ///   parameter isBack: true为反回按钮
    /// - returns: <#return value description#>
    
    
    convenience init(title: String, fontSize:CGFloat = 16,target: AnyObject,action: Selector, isBack: Bool = false) {
        
        let btn: UIButton = UIButton.cz_textButton(title, fontSize: fontSize, normalColor: UIColor.gray, highlightedColor: UIColor.orange)
        
        if(isBack) {
            let imageName = "navigationbar_back_withtext"
            btn.setImage(UIImage(named: imageName), for: .normal)
            btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
            btn.sizeToFit()
        }
        
        btn.addTarget(target, action: action, for: .touchUpInside)
        
        self.init(customView:btn)
        
    }
    
}
