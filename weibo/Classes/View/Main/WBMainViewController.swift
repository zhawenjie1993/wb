//
//  WBMainViewController.swift
//  weibo
//
//  Created by Mac on 2020/4/13.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class WBMainViewController: UITabBarController,UITabBarControllerDelegate {
    
    
    private lazy var composeBtn = {()->UIButton in
        let button = UIButton.cz_imageButton("tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button")
//        button?.addTarget(self, action: #selector(clickAction(sender:)), for: .touchUpInside)
        
        return button!
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.setupChildController()
        self.setupComposeBtn()
       
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.isMember(of: UIViewController.self) {
            self.clickAction(sender: self.composeBtn)
            return false
        }
        return true
    }
    deinit {
        
    }

}


extension WBMainViewController {
    //按钮点击事件
    
    @objc func clickAction(sender:UIButton) {
        print("dfiwejfijfideunew")
    }
    
    //设置composeBtn
    private func setupComposeBtn(){
        self.tabBar.addSubview(self.composeBtn)
        let w = tabBar.bounds.width/5 - 1
        composeBtn.frame = tabBar.bounds.insetBy(dx: 2*w, dy: 0)
    }
    
    
    //设置所有子控制器
    private func setupChildController() {
        let array = [
            ["clsName":"WBHomeViewController","title":"首页","image":"tabbar_home","selImage":"tabbar_home_selected"],
            ["clsName":"WBMessageViewController","title":"消息","image":"tabbar_message_center","selImage":"tabbar_message_center_selected"],
            ["clsName":"UIViewController"],
            ["clsName":"WBDiscoverViewController","title":"发现","image":"tabbar_discover","selImage":"tabbar_discover_selected"],
            ["clsName":"WBProfileViewController","title":"我的","image":"tabbar_profile","selImage":"tabbar_profile_selected"],
        ]
        for dict in array {
            self.addChild(self.controller(dic: dict))
        }
    }
    
    //使用字典创建子控制器
    private func controller(dic:[String:String]) -> UIViewController {
        guard let clsname = dic["clsName"],
            let title = dic["title"],
            let image = dic["image"],
            let selImage = dic["selImage"],
            let cls = NSClassFromString("weibo."+clsname) as? UIViewController.Type
            
            else {
                return UIViewController()
        }
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: image)
        vc.tabBarItem.selectedImage = UIImage(named: selImage)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.orange], for: .selected)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14)], for:.normal)
        self.tabBar.tintColor = UIColor.orange
        let nav = WBNavigationController(rootViewController: vc)
//        let n = XPRootNavigationController(rootViewController: vc)
        
        
        return nav
        
    }
    
    
    
    
    
}
