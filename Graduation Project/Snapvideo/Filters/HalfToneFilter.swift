//
//  HalfToneFilter.swift
//  Snapvideo
//
//  Created by Ariya Behjat on 02/02/2020.
//  Copyright © 2020 Ariya Behjat. All rights reserved.
//

import Foundation
import CoreImage

struct HalfToneFilter: Filter {
    let name: String = "HalfTone"
    
    func apply(image: CIImage) -> CIImage {
        let optionalFilter = CIFilter(name: "CICMYKHalftone")
        guard let filter = optionalFilter else {
            return image
        }
        filter.setValue(image, forKey: kCIInputImageKey)
        filter.setValue(25, forKey: kCIInputWidthKey)
        return filter.outputImage ?? image
    }
}
