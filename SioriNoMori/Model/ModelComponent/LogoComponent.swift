//
//  LogoComponent.swift
//  SioriNoMori
//
//  Created by 前田啓 on 2018/11/11.
//  Copyright © 2018 kei maeda. All rights reserved.
//

import UIKit

class LogoComponent: NSObject {
  static let shared = LogoComponent()
  
  func setLogo(myView: UIView){
    //ロゴ的な
    let logoLabel = UILabel()
    logoLabel.text = "栞の森"
    logoLabel.textColor = UIColor.white
    logoLabel.font = UIFont(name: "Arial", size: 20)
    if #available(iOS 11.0, *) {
      logoLabel.frame = CGRect(x: 20, y: 40, width: myView.frame.width / 6, height: myView.frame.height / 20)
    }else{
      logoLabel.frame = CGRect(x: 20, y: 20, width: myView.frame.width / 6, height: myView.frame.height / 20)
    }
    let logoBackColor = #colorLiteral(red: 0, green: 0.6670674086, blue: 0.6729698777, alpha: 1)
    logoLabel.backgroundColor = logoBackColor
    myView.addSubview(logoLabel)
  }
}


