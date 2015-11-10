//
//  ViewController.swift
//  表情测试
//
//  Created by 章芝源 on 15/11/10.
//  Copyright © 2015年 ZZY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let str = "0x1f623"
        
        
        //1. 扫描
        let scanner = NSScanner(string: str);
         // UnsafeMutablePointer 参数传递 &，必须使用 var
        var value: UInt32 = 0
        //把16进制数转化成, int32类型
        scanner.scanHexInt(&value);
        
        print(value)
        
        //2.将scalar类型的数值转化成unicode字符
        let c = Character(UnicodeScalar(value))
        print(c)
        
        
        //转化成字符串
        let result =  String(c)
        print(result)
        
        label.text = result
        
    }

  

}

