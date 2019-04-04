//
//  ITView.swift
//  demo
//
//  Created by 雷维卡 on 2019/4/1.
//  Copyright © 2019 jyz. All rights reserved.
//

import UIKit

class ITView: UIView {
    
    var _progress:CGFloat?
    var progress: CGFloat {
        get {
            return _progress ?? 0
        }
        set {
            _progress = newValue
            setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        UIColor.blue.setFill()
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2);
        let radius = CGFloat(min(center.x, center.y))
        let start = -CGFloat(Double.pi / 2)
        let end = start + CGFloat(2 * Double.pi) * progress;
        let path = UIBezierPath(arcCenter: center, radius: radius, startAngle: start, endAngle: end, clockwise: true)
        path.addLine(to: center)
        path.fill()
    }
    private func demo() {
        print("hhh")
    }
}
