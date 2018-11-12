//
//  FourButton.swift
//  SioriNoMori
//
//  Created by 前田啓 on 2018/11/12.
//  Copyright © 2018 kei maeda. All rights reserved.
//

import UIKit

class FourButtonView: UIView {
    
    let addButton: UIButton
    let bookMarkButton: UIButton
    let button3: UIButton
    let button4: UIButton
    
    override init(frame: CGRect) {
        let fourButtonViewFrame = frame
        
        addButton = UIButton()
        addButton.frame =  CGRect(x: 0, y: 0, width: frame.width / 2, height: frame.height / 2)
        addButton.backgroundColor = UIColor.blue
        
        bookMarkButton = UIButton()
        bookMarkButton.frame = CGRect(x: frame.width / 2, y: 0, width: frame.width / 2, height: frame.height / 2)
        bookMarkButton.backgroundColor = UIColor.green
        
        button3 = UIButton()
        button3.frame = CGRect(x: 0, y: frame.height / 2, width: frame.width / 2, height: frame.height / 2)
        button3.backgroundColor = UIColor.orange
        
        button4 = UIButton()
        button4.frame = CGRect(x: frame.width / 2, y: frame.height / 2, width: frame.width / 2, height: frame.height / 2)
        button4.backgroundColor = UIColor.gray
        
        super.init(frame: frame)
        self.addSubview(addButton)
        self.addSubview(bookMarkButton)
        self.addSubview(button3)
        self.addSubview(button4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
