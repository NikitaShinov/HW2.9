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
        
        for index in 0..<types.count {
            let animation = Animation(type: types[index],
                                      curve: curves[index],
                                      force: DataManager.sharedData.forces.randomElement()!,
                                      duration: DataManager.sharedData.durations.randomElement()!)
            listOfAnimations.append(animation)
        }
        return listOfAnimations
    }
}
