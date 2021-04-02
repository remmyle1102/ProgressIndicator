//
//  ProgressBar.swift
//  ProgressBar
//
//  Created by Remmy Le on 01/04/2021.
//

import Foundation
import UIKit

class ProgressBar {
    private var barHeight: CGFloat
    private var barWidth: CGFloat
    var barLayer = CALayer()
    private var barShapeLayer = CAShapeLayer()
    private var barAnimationShapeLayer = CAShapeLayer()
    
    init(barHeight: CGFloat, barWidth: CGFloat, barFrame: CGRect) {
        self.barHeight = barHeight
        self.barWidth = barWidth
        self.barLayer.frame = barFrame
        drawBar()
    }
    
    private func drawBar() {
        let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: barWidth, height: barHeight), cornerRadius: 0)
        
        barShapeLayer.path = path.cgPath
        barShapeLayer.frame = CGRect(x: 0, y: 0, width: barWidth, height: barHeight)
        barShapeLayer.lineWidth = barHeight
        barShapeLayer.strokeColor = UIColor.black.cgColor
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = 2
//        animation.repeatCount = .infinity
        barShapeLayer.add(animation, forKey: "line")
        barLayer.addSublayer(barShapeLayer)
        
    }
    
}
