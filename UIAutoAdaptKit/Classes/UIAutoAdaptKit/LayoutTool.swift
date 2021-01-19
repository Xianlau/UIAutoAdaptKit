//
//  LayoutTool.swift
//  SwiftDemo
//
//  Created by sam   on 2020/6/4.
//  Copyright © 2020 sam  . All rights reserved.
//

import UIKit

/*
 *UI布局自动适配
 *
 */


///设置单个控件的宽度或者高度 如一个button的宽度高度都需要用此方法
public func autoLength(_ lenght: CGFloat) -> CGFloat {
    if UIDevice.isIphone {
        return autoHeihgt(lenght)
    }else {
        return autoWidth(lenght)
    }
}

///设置两个控件之间的左右距离 如左右两个button的左右距离
public func autoWidth(_ width: CGFloat) -> CGFloat {
    if  UIApplication.shared.statusBarOrientation.isLandscape {
        return LayoutMethod.autoLayoutWidth(iPhoneWidth: width)
    }else {
        return  LayoutMethod.autoLayoutHeight(iPhoneHeight: width)
    }
}
///设置两个控件之间的上下距离 如左右两个button的相对上下距离
public func autoHeihgt(_ height: CGFloat) -> CGFloat {
    
    if  UIApplication.shared.statusBarOrientation.isLandscape {
        return LayoutMethod.autoLayoutHeight(iPhoneHeight: height)
    }else {
        return  LayoutMethod.autoLayoutWidth(iPhoneWidth: height)
    }
}

///设置系统字号 能自动适配所有设备
public func autoFontSize(_ font: Float) -> UIFont {

    var floatSize = UIDevice.isIpad ? font * 1.5 : font
    if UIDevice.isiPhone5() {
        if font > 20 {
            floatSize = font - 5
        }else if font > 15 {
            floatSize = font - 3
        }else {
            floatSize = font - 2
        }
        
    }
    let font : UIFont = UIFont.systemFont(ofSize: CGFloat(floatSize))
    return font
}

public struct LayoutTool{
    
    ///加粗的系统字号
    public static func autoBoldfontSize(_ font: Float) -> UIFont {

        var floatSize = UIDevice.isIpad ? font * 1.5 : font
        if UIDevice.isiPhone5() {
            if font > 20 {
                floatSize = font - 5
            }else if font > 15 {
                floatSize = font - 3
            }else {
                floatSize = font - 2
            }
            
        }
        let font : UIFont = UIFont.boldSystemFont(ofSize: CGFloat(floatSize))
        return font
    }

    ///安全距离的Insets
    public static var safeAreaInsets: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return UIApplication.shared.delegate?.window??.safeAreaInsets ?? .zero
        }
        return .zero
    }
    ///左边安全距离
    public static let leftSafeInset = safeAreaInsets.left
    ///右边安全距离
    public static let rightSafeInset = safeAreaInsets.right
    ///上边安全距离
    public static let topSafeInset = safeAreaInsets.top
    ///下边安全距离
    public static let bottomSafeInset = safeAreaInsets.bottom
    
    ///最长的屏幕边: 横屏下的屏幕宽度 or 竖屏下的高度
    public static let autoScreenWidth = max(UIScreen.main.bounds.height, UIScreen.main.bounds.width)
    
    ///最短的屏幕边: 横屏下的屏幕高度 or 竖屏下的宽度
    public static let autoScreenHeight = min(UIScreen.main.bounds.height, UIScreen.main.bounds.width)
}










