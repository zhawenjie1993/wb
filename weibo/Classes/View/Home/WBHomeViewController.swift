//
//  WBHomeViewController.swift
//  weibo
//
//  Created by Mac on 2020/4/13.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        // Do any additional setup after loading the view.
    }
    
    @objc func pushAction(){
        let vc = WBDiscoverViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}

extension WBHomeViewController {
    override func setupUI() {
        super.setupUI()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "好友", fontSize: 16.0, target: self, action: #selector(pushAction), isBack:false)
    }
}
