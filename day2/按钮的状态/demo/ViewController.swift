//
//  ViewController.swift
//  demo
//
//  Created by 雷维卡 on 2019/4/1.
//  Copyright © 2019 jyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let cellID = "cellID"
    @IBOutlet weak var myView: ITView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = "wangnima"
        return cell!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        view.addSubview(tableView)
        tableView.dataSource = self
    }
    @IBAction func sliderChange(_ sender: UISlider) {
         myView.progress = CGFloat(sender.value)
    }
    func rotate(_ nums: inout [Int], _ k: Int) {
        var dict = [Int: Int](minimumCapacity: nums.count)
        for i in 0..<nums.count {
            dict[(i + k) % nums.count] = nums[i]
        }
        for i in 0..<nums.count {
            nums[i] = dict[i]!
        }
    }
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return nums.count != Set<Int>(nums).count
//        if nums.count <= 1 {
//            return false
//        }
//        var values = Set<Int>(arrayLiteral: nums[0])
//        for i in 1..<nums.count {
//            guard !values.contains(nums[i]) else {
//                return true
//            }
//            values.insert(nums[i])
//        }
//        return false
    }
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict1 = [Int: Int]()
        var dict2 = [Int: Int]()
        var count = 0
        var res = [Int]()
        for elem in nums1 {
            if dict1.keys.contains(elem) {
                count = dict1[elem]! + 1
                dict1[elem] = count
            } else {
                dict1[elem] = 1
            }
        }
        for elem in nums2 {
            if dict2.keys.contains(elem) {
                count = dict2[elem]! + 1
                dict2[elem] = count
            } else {
                dict2[elem] = 1
            }
        }
        dict1.forEach { (k, v) in
            if dict2.keys.contains(k) {
                for _ in 0..<min(v, dict2[k]!) {
                    res.append(k)
                }
            }
        }
        return res
    }
}
