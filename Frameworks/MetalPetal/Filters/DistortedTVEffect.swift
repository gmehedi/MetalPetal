//
//  MonitorGlitchTVEffect.swift
//  MetalFilters
//
//  Created by Mehedi on 9/1/24.
//  Copyright © 2024 shuifeng.me. All rights reserved.
//

import Foundation
import CoreGraphics
import Metal

#if SWIFT_PACKAGE
import MetalPetalObjectiveC.Core
#endif

class DistortedTVEffect: MTIFilter {
    
    var outputPixelFormat: MTLPixelFormat
    
    var outputImage: MTIImage?
    
    public struct Layer: Hashable, Equatable {
        
        public var content: MTIImage
        public var time: CGFloat
        
        public init(content: MTIImage) {
            self.content = content
            self.time = 0.0
        }
        
        public func hash(into hasher: inout Hasher) {
            hasher.combine(content)
            hasher.combine(time)
            
        }
    }
    
}
