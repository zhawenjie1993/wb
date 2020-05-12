//
//  WBBaseViewController.swift
//  weibo
//
//  Created by Mac on 2020/4/13.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {
    override var title: String? {
        didSet{
            naviItem.title = title
        }
    }
    lazy var naviBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: Int(UIScreen.cz_screenWidth()), height: TopSpaceHigh))
    
    
    lazy var naviItem: UINavigationItem = UINavigationItem();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view.
    }
    

}

extension WBBaseViewController {
    @objc func setupUI(){
        self.view.backgroundColor = UIColor.white
//        self.view.addSubview(naviBar)
    }
}
