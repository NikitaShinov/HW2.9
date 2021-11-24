//
//  ViewController.swift
//  HW2.9
//
//  Created by Никита Шинов on 24.11.2021.
//

import Spring

class ViewController: UIViewController {
    
    private let animations = Animation.getRandomAnimation()
    private var animationIndex = 0


    @IBOutlet var ball: SpringImageView!
    @IBOutlet var animationDetails: SpringLabel!
    @IBOutlet var button: SpringButton!
    
    @IBAction func buttonPressed(_ sender: SpringButton) {
        
        button.setTitle(animations[animationIndex+1].type, for: .normal)
        
        ball.animation = animations[animationIndex].type
        ball.curve = animations[animationIndex].curve
        ball.force = animations[animationIndex].force
        ball.duration = animations[animationIndex].duration
        
        ball.animateNext(completion: {
            if self.animationIndex < (self.animations.count - 1) {
                self.animationIndex += 1
            } else {
                self.animationIndex = 0
            }
            self.getDescription()
        } )

    }
    
    private func getDescription () {
        let animationDefinition = """
\(animations[animationIndex].curve)
\(animations[animationIndex].type)
\(animations[animationIndex].force)
\(animations[animationIndex].duration)
"""
        animationDetails.text = animationDefinition
    }
}


//"Type:\(animations[animationIndex].type)\nCurve:\(animations[animationIndex].curve)\nForce:\(animations[animationIndex].force)\nDuration:\(animations[animationIndex].duration)"
//animationDetails.text = animationDefinition

