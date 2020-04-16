//
//  Bundle+extension.swift
//  weibo
//
//  Created by Mac on 2020/4/15.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation
extension Bundle {
    
    var title: String {
        
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
}
