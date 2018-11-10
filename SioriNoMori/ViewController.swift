//
//  ViewController.swift
//  SioriNoMori
//
//  Created by 前田啓 on 2018/11/11.
//  Copyright © 2018 kei maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //最初のページ
    
//    var logoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        LogoComponent.shared.setLogo(myView: self.view)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

