//
//  DataManager.swift
//  HW2.9
//
//  Created by Никита Шинов on 24.11.2021.
//

import Foundation
import Spring

class DataManager {
    
    static let sharedData = DataManager()
    
    let types = ["slideLeft",
                 "slideRight",
                 "slideDown",
                 "slideUp",
                 "fadeIn",
                 "fadeOut",
                 "fadeInLeft",
                 "fadeInRight",
                 "fadeInDown",
                 "fadeInUp",
                 "zoomIn",
                 "zoomOut",
                 "flash",
                 "shake",
                 "pop",
                 "morph",
                 "squeeze",
                 "wobble",
                 "swing",
                 "flipX",
                 "flipY",
                 "fall",
                 "squeezeLeft",
                 "squeezeRight",
                 "squeezeDown",
                 "squeezeUp"]
    let curves = ["easeIn",
                  "easeOut",
                  "easeInOut",
                  "linear",
                  "spring",
                  "easeInSine",
                  "easeOutSine",
                  "easeInOutSine",
                  "easeInQuad",
                  "easeOutQuad",
                  "easeInOutQuad",
                  "easeInCubic",
                  "easeOutCubic",
                  "easeInOutCubic",
                  "easeInQuart",
                  "easeOutQuart",
                  "easeInOutQuart",
                  "easeInQuint",
                  "easeOutQuint",
                  "easeInOutQuint",
                  "easeInExpo",
                  "easeOutExpo",
                  "easeInOutExpo",
                  "easeInCirc",
                  "easeOutCirc",
                  "easeInOutCirc",
                  "easeInBack",
                  "easeOutBack",
                  "easeInOutBack"]
    let forces: [CGFloat] = [1, 2, 3, 4]
    let durations: [CGFloat] = [1, 2, 3, 4]
//    ["slideLeft", "slideRight", "slideDown"]
}
