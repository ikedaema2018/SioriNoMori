//
//  ViewController.swift
//  SioriNoMori
//
//  Created by 前田啓 on 2018/11/11.
//  Copyright © 2018 kei maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bbb: String?
    var ggg  = "dwadawdawd"
    var ttt: [String] = []
    
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
        
    }
    
    //画面のUIのコンポーネント
    private func buttonView(myView: UIView) -> (UIView) {
        let view = UIView()
        view.layer.borderWidth = 1
        view.frame = CGRect(x: 0, y: 0, width: myView.frame.width / 3 * 2, height: myView.frame.width / 3 * 2)
        view.center = CGPoint(x: myView.frame.width / 2, y: myView.frame.height / 2)
        return view
    }
    
    private func addButton(myView: UIView) -> (UIButton) {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: myView.frame.width / 2, height: myView.frame.height / 2)
        button.setTitle("新しい本を\n登録する", for: .normal)
        button.titleLabel?.numberOfLines = 0
        return button
    }
}

//４つのボタンのためのクラス
class fourButton: NSObject {
    
}
