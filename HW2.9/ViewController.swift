//
//  ViewController.swift
//  HW2.9
//
//  Created by Никита Шинов on 24.11.2021.
//

import Spring
import CoreGraphics

class ViewController: UIViewController {
    
    private var animation: Animation!

    @IBOutlet var ball: SpringImageView!
    @IBOutlet var animationDetails: SpringLabel!
    @IBOutlet var button: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomAnimation()
        getDescription()
    }
    
    @IBAction func buttonPressed(_ sender: SpringButton) {
        
        setAnimation()
        getDescription()
        getRandomAnimation()
        button.setTitle("\(animation.type)", for: .normal)
        
    }
    
    private func getRandomAnimation () {
        animation = Animation(type: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
                              curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                              force: CGFloat(Double.random(in: 0...3)),
                              duration: CGFloat(Double.random(in: 0...3)))
        
    }
    
    private func getDescription () {
        let animationDefinition =
                                """
                                Curve: \(animation.curve)
                                Name: \(animation.type)
                                Force: \(animation.force)
                                Duration: \(animation.duration)
                                """
        animationDetails.text = animationDefinition
    }
    
    private func setAnimation () {
        
        ball.animation = animation.type
        ball.curve = animation.curve
        ball.force = animation.force
        ball.duration = animation.duration
        ball.animate()
        
    }
}
