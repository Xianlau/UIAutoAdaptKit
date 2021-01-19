//
//  UIDevice+Extension.swift
//  SwiftDemo
//
//  Created by sam   on 2020/6/4.
//  Copyright © 2020 sam  . All rights reserved.
//

import UIKit

extension UIDevice {
    
    // MARK: - 判断 机型
    public static let isIphone = UIDevice.current.userInterfaceIdiom == .phone
    public static let isIpad = UIDevice.current.userInterfaceIdiom == .pad
    
    /// 判断是否为iphonex系列 有刘海屏
    public static func isiPhoneXSeries() -> Bool {
        
        guard #available(iOS 11.0, *) else {
            return false
        }
        return UIApplication.shared.windows[0].safeAreaInsets != UIEdgeInsets.zero
    }
    
    ///是否iOS14系统
    public class func isiOS14() -> Bool {
        if #available(iOS 14.0, *) {
            return true
        } else {
            return false
        }
    }
    ///是否iOS13系统
    public class func isiOS13() -> Bool {
        if #available(iOS 13.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func isiOS12() -> Bool {
        if #available(iOS 12.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func isiOS11() -> Bool {
        if #available(iOS 11.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func isiOS10() -> Bool {
        if #available(iOS 10.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func isiOS9() -> Bool {
        if #available(iOS 9.0, *) {
            return true
        } else {
            return false
        }
    }
    
    // MARK: - 屏幕类型
    @objc public class func isiPhoneX() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width: 1125, height: 2436)))! {
            return true
        }
        return false
    }
    
    public class func isiPhone6PlusBigMode() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width: 1125, height: 2001)))! {
            return true
        }
        return false
    }
    
    public class func isiPhone6Plus() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width:1242, height: 2208)))! {
            return true
        }
        return false
    }
    
    public class func isiPhone6BigMode() -> Bool{
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width: 320, height: 568)))! {
            return true
        }
        return false
    }
    
    public class func isiPhone6() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width:750, height: 1334)))! {
            return true
        }
        return false
    }
    
    public class func isiPhone5() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width: 640, height: 1136)))! {
            return true
        }
        return false
    }
}
