//
//  ReturnButton.swift
//  SioriNoMori
//
//  Created by 前田啓 on 2018/11/12.
//  Copyright © 2018 kei maeda. All rights reserved.
//

import UIKit

class ReturnButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let buttonColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        self.backgroundColor = buttonColor
        self.setTitle("back", for: UIControl.State.normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        self.titleLabel?.textColor = UIColor.white
        self.addTarget(AddTargetViewController(), action: #selector(AddTargetViewController.backSegue), for: UIControl.Event.touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
