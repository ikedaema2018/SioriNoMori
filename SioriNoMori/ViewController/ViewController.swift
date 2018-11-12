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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        //ロゴ
        LogoComponent.shared.setLogo(myView: self.view)
        //４つのボタン
        let fourButtonView = FourButtonView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width / 3 * 2, height: self.view.frame.width / 3 * 2))
        fourButtonView.center = CGPoint(x: self.view.frame.width / 2, y: self.view.frame.height / 2)
        self.view.addSubview(fourButtonView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    @objc func addSegue(){
        let storyboard = UIStoryboard(name: "AddTarget", bundle: nil)
        let next: AddTargetViewController = storyboard.instantiateInitialViewController() as! AddTargetViewController
        next.aaa = "aaa"
        present(next, animated: true, completion: nil)
    }
}

