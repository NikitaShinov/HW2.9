//
//  Animation.swift
//  HW2.9
//
//  Created by Никита Шинов on 24.11.2021.
//

import Foundation
import Spring

struct Animation {
    
    let type: String
    let curve: String
    let force: Double
    let duration: Double
    
    
    static func getRandomAnimation () -> [Animation] {
        
        var listOfAnimations: [Animation] = []
        
        let types = DataManager.sharedData.types.shuffled()
        let curves = DataManager.sharedData.curves.shuffled()
        
        for index in 0..<types.count {
            let animation = Animation(type: types[index],
                                      curve: curves[index],
                                      force: CGFloat(Double.random(in: 0.4...1)),
                                      duration: CGFloat(Double.random(in: 0.3...1)))
            listOfAnimations.append(animation)
        }
        return listOfAnimations
    }
}
