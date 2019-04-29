//
//  ITAccount.swift
//  取钱
//
//  Created by 雷维卡 on 2019/4/28.
//  Copyright © 2019 jyz. All rights reserved.
//

import UIKit

class ITAccount: NSObject {
    var condition:NSCondition!
    var hasMoney = true
    var accountNO:String
    var balance:Double
    init(accountNO:String, balance:Double) {
        self.accountNO = accountNO
        self.balance = balance
        self.condition = NSCondition()
        super.init()
    }
    func draw(drawAmount:Double) {
        condition.lock()
        if !hasMoney {
            condition.wait()
        } else {
            print("\(Thread.current.name ?? "") 取了\(drawAmount)元")
            Thread.sleep(forTimeInterval: 0.01)
            balance -= drawAmount
            print("\t 卡里还剩\(balance)元")
            hasMoney = false
            condition.broadcast()
        }
        condition.unlock()
    }
    func deposit(drawAmount:Double) {
        condition.lock()
        if hasMoney {
            condition.wait()
        } else {
            print("从\(Thread.current.name ?? "")存款成功")
            balance += drawAmount
            print("现在卡里有\(balance)元")
            hasMoney = true
            condition.broadcast()
        }
        condition.unlock()
    }
}
