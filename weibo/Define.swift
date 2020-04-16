//
//  Define.swift
//  weibo
//
//  Created by Mac on 2020/4/15.
//  Copyright © 2020 Mac. All rights reserved.
//

import Foundation
let kNavBarHeight:CGFloat = 44.0

func isPad() -> Bool {
    return UIDevice.current.userInterfaceIdiom == .pad
}

func isPhone() -> Bool {
    return UIDevice.current.userInterfaceIdiom == .phone
}

let Device_Is_iPhoneX=__CGSizeEqualToSize(CGSize.init(width: 1125/3, height: 2436/3), UIScreen.main.bounds.size)
 
let Device_Is_iPhoneXr=__CGSizeEqualToSize(CGSize.init(width: 828/2, height: 1792/2), UIScreen.main.bounds.size)
 
let Device_Is_iPhoneXs=__CGSizeEqualToSize(CGSize.init(width: 1125/3, height: 2436/3), UIScreen.main.bounds.size)
 
let Device_Is_iPhoneXs_Max=__CGSizeEqualToSize(CGSize.init(width: 1242/3, height: 2688/3), UIScreen.main.bounds.size)
 
let isIphoneX = (Device_Is_iPhoneX || Device_Is_iPhoneXr || Device_Is_iPhoneXs||Device_Is_iPhoneXs_Max)
 
func isiPhoneX() ->Bool {
    let screenHeight = UIScreen.main.nativeBounds.size.height;
    if screenHeight == 2436 || screenHeight == 1792 || screenHeight == 2688 || screenHeight == 1624 {
        return true
    }
    return false
}
/**
状态栏高度
 */
let StateBarHigh = ((Device_Is_iPhoneX||Device_Is_iPhoneXr||Device_Is_iPhoneXs||Device_Is_iPhoneXs_Max) ? 44:20)
/**
 顶部状态栏+导航高度
 */
let TopSpaceHigh = ((Device_Is_iPhoneX||Device_Is_iPhoneXr||Device_Is_iPhoneXs||Device_Is_iPhoneXs_Max) ? 88:64)
/**
 底部安全区域的高度
 */
let  bottomSafeHeight = ((Device_Is_iPhoneX||Device_Is_iPhoneXr||Device_Is_iPhoneXs||Device_Is_iPhoneXs_Max) ? 34:0)


