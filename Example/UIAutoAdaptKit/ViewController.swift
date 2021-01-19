//
//  ViewController.swift
//  UIAutoAdaptKit
//
//  Created by xianlau on 01/14/2021.
//  Copyright (c) 2021 xianlau. All rights reserved.
//

import UIKit
import UIAutoAdaptKit

class ViewController: UIViewController {
    
    var testView: UIView = UIView.init()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        /*
         * autoWidth : 两个空间之间的宽度距离
         * autoHeihgt : 两个空间之间的高度距离
         * autoLength : 单个空间之间的边长 *单个空间的宽和高都必须使用这个,会自动适配, 否则会和UI设计师给的图变形.
         *
         */
        testView.frame = CGRect.init(x: autoWidth(20), y: autoHeihgt(20), width: autoLength(100), height: autoLength(100))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

