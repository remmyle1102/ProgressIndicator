//
//  ProgressCircle.swift
//  ProgressBar
//
//  Created by Remmy Le on 01/04/2021.
//

import Foundation
import UIKit

class ProgressCircle {
    private var circleWidth: CGFloat
    var circleLayer = CALayer()
    private var circleShapeLayer = CAShapeLayer()
    
    init(circleWidth: CGFloat, circleFrame: CGRect) {
        self.circleWidth = circleWidth
        self.circleLayer.frame = circleFrame
        drawCircle()
    }
    
    private func drawCircle() {
        let path = UIBezierPath(arcCenter: CGPoint(x: circleWidth / 2, y: circleWidth / 2), radius: CGFloat(circleWidth / 2), startAngle: CGFloat(-Double.pi / 2), endAngle: CGFloat(Double.pi * 2.0 - Double.pi / 2), clockwise: true)
        
        circleShapeLayer.frame = CGRect(x: 0, y: 0, width: circleWidth, height: circleWidth)
        circleShapeLayer.path = path.cgPath
        circleShapeLayer.lineCap = .round
        circleShapeLayer.strokeColor = UIColor.red.cgColor
        circleShapeLayer.fillColor = UIColor.blue.cgColor
        circleShapeLayer.lineWidth = 1
        circleLayer.addSublayer(circleShapeLayer)
    }
}
