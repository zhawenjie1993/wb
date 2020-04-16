//
//  WBDiscoverViewController.swift
//  weibo
//
//  Created by Mac on 2020/4/13.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class WBDiscoverViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        self.title = "发现"
    }

}

extension WBDiscoverViewController {
    override func setupUI() {
        super.setupUI()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一个", target: self, action: #selector(pushAction))
    }
    
    
    @objc private func pushAction() {
        let vc = WBDiscoverViewController()
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
