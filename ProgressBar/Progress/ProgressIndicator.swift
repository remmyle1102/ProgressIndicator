//
//  ProgressIndicator.swift
//  ProgressBar
//
//  Created by Remmy Le on 01/04/2021.
//

import Foundation
import UIKit

class ProgressIndicator: UIView {
    private var stepCount = 5
    private var circles = [ProgressCircle]()
    private var bars = [ProgressBar]()
    private let barWidth: CGFloat = 35.0
    private let barHeight: CGFloat = 2.5
    private var circleWidth: CGFloat = 9.0
    
    func drawProgressIndicator() {
        let progressSize = CGFloat(stepCount - 1) * (circleWidth + barWidth) + circleWidth
        let xCoordinateOffset = self.frame.midX - progressSize / 2
        let circleCenter = self.frame.height / 2.00
        
        var circleStart = xCoordinateOffset
        for _ in 0...stepCount - 1 {
            let circleFrame = CGRect(x: circleStart, y: circleCenter, width: circleWidth, height: circleWidth)
            
            let circle = ProgressCircle(circleWidth: circleWidth, circleFrame: circleFrame)
            layer.addSublayer(circle.circleLayer)
            circles.append(circle)
            
            circleStart += barWidth + circleWidth
        }
        
        var barStart = xCoordinateOffset + circleWidth
        for _ in 0...stepCount - 2 {
            let barFrame = CGRect(x: barStart, y: circleCenter + (circleWidth / 2) - (barHeight / 2), width: barWidth, height: barHeight)
            let bar = ProgressBar(barHeight: barHeight, barWidth: barWidth, barFrame: barFrame)
            
            layer.addSublayer(bar.barLayer)
            bars.append(bar)
            
            barStart += barWidth + circleWidth
        }
    }
}
