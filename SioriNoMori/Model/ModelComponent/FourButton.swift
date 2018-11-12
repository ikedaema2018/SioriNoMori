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
        
        addButton = UIButton()
        addButton.frame =  CGRect(x: 0, y: 0, width: frame.width / 2, height: frame.height / 2)
        addButton.backgroundColor = UIColor.blue
        addButton.setTitle("新しい本を\n追加", for: UIControl.State.normal)
        addButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        addButton.titleLabel?.textColor = UIColor.white
        addButton.titleLabel?.numberOfLines = 0
        
        bookMarkButton = UIButton()
        bookMarkButton.frame = CGRect(x: frame.width / 2, y: 0, width: frame.width / 2, height: frame.height / 2)
        bookMarkButton.backgroundColor = UIColor.green
        bookMarkButton.setTitle("本の一覧を\n見る", for: UIControl.State.normal)
        bookMarkButton.titleLabel?.textColor = UIColor.white
        bookMarkButton.titleLabel?.text = "本の一覧を\n見る"
        bookMarkButton.titleLabel?.numberOfLines = 0
        
        button3 = UIButton()
        button3.frame = CGRect(x: 0, y: frame.height / 2, width: frame.width / 2, height: frame.height / 2)
        button3.backgroundColor = UIColor.orange
        button3.addTarget(ViewController(), action: #selector(ViewController.addSegue), for: UIControl.Event.touchUpInside)
        
        button4 = UIButton()
        button4.frame = CGRect(x: frame.width / 2, y: frame.height / 2, width: frame.width / 2, height: frame.height / 2)
        button4.backgroundColor = UIColor.gray
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.green
        
        self.addSubview(addButton)
        self.addSubview(bookMarkButton)
        self.addSubview(button3)
        self.addSubview(button4)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
