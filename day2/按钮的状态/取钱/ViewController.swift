//
//  ViewController.swift
//  取钱
//
//  Created by 雷维卡 on 2019/4/28.
//  Copyright © 2019 jyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var account:ITAccount!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        account = ITAccount(accountNO: "123456", balance: 1000)
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 10, y: 50, width: view.bounds.width - 20, height: 30)
        button.setTitle("并发取钱", for: .normal)
        button.addTarget(self, action: #selector(drawMoney(sender:)), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func drawMoney(sender:UIButton) {
        let thread1 = Thread(target: self, selector: #selector(draw(moneyAmount:)), object: NSNumber(value: 800))
        thread1.name = "中国银行"
        let thread2 = Thread(target: self, selector: #selector(deposit(moneyAmount:)), object: NSNumber(value: 800))
        thread2.name = "中国工商银行"
        thread1.start()
        thread2.start()
    }
    @objc func draw(moneyAmount:NSNumber) {
        for _ in 0...100 {
            account.draw(drawAmount: moneyAmount.doubleValue)
        }
    }
    @objc func deposit(moneyAmount:NSNumber) {
        for _ in 0...100 {
        account.deposit(drawAmount: moneyAmount.doubleValue)
        }
    }
}

