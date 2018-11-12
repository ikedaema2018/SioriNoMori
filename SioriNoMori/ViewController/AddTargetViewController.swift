//
//  AddTargetViewController.swift
//  SioriNoMori
//
//  Created by 前田啓 on 2018/11/11.
//  Copyright © 2018 kei maeda. All rights reserved.
//

import UIKit

class AddTargetViewController: UIViewController {
    var aaa: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        let returnButton = ReturnButton(frame: (CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 10)))
        returnButton.center = CGPoint(x: self.view.frame.width / 2, y: self.view.frame.height - self.view.frame.height / 10 * 2)
        self.view.addSubview(returnButton)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func backSegue(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let next: ViewController = storyboard.instantiateInitialViewController() as! ViewController
        present(next, animated: true, completion: nil)
    }

}
