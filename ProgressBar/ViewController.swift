//
//  ViewController.swift
//  ProgressBar
//
//  Created by Remmy Le on 01/04/2021.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    @IBOutlet weak var progressIndicator: ProgressIndicator!
    
    @IBOutlet weak var animationContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        progressIndicator.drawProgressIndicator()
        
//        let jsonName = "progress_loading_after"
//        let jsonName1 = "progress_loading_completed"
        let jsonName2 = "progress_loading_waiting"
//        let jsonName3 = "progress_loading"
        let animation = Animation.named(jsonName2)
        let animationView = AnimationView(animation: animation)
        animationContainer.addSubview(animationView)
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        animationView.play()
    }

}

