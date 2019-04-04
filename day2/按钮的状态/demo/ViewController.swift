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
}

