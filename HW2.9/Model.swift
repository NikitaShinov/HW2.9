//
//  Model.swift
//  HW2.9
//
//  Created by Никита Шинов on 24.11.2021.
//

import Foundation
import Spring

struct Animation {
    
    var type: String
    var curve: String
    var force: CGFloat
    var duration: CGFloat
    
    
    static func getRandomAnimation () -> [Animation] {
        
        var listOfAnimations: [Animation] = []
        
        let types = DataManager.sharedData.types.shuffled()
        let curves = DataManager.sharedData.curves.shuffled()
        let forces = DataManager.sharedData.forces.shuffled()
        let durations = DataManager.sharedData.durations.shuffled()
        
        for index in 0..<types.count {
            let animation = Animation(type: types[index],
                                      curve: curves[index],
                                      force: forces.randomElement()!,
                                      duration: durations.randomElement()!)
            listOfAnimations.append(animation)
        }
        return listOfAnimations
    }
}
