//
//  ViewController.swift
//  测试样例
//
//  Created by apple on 2019/5/25.
//  Copyright © 2019 jyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        let greenView = UIView(frame: .init(x: 20, y: 200, width: 200, height: 200))
        greenView.backgroundColor = UIColor.green
        view.addSubview(greenView)
        let recongnizer = UITapGestureRecognizer(target: self, action: #selector(tapToController))
        greenView.addGestureRecognizer(recongnizer)
    }
    @objc func tapToController() {
        print("tapDid")
        let collectionController = UICollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        self.navigationController?.pushViewController(collectionController, animated: true)
    }
}

