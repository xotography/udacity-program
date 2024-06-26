//
//  ExportImageView.swift
//  Snapvideo
//
//  Created by Ariya Behjat on 02/02/2020.
//  Copyright © 2020 Ariya Behjat. All rights reserved.
//

import UIKit

final class ExportImageView: UIImageView {
    init(systemName: String) {
        let image = UIImage(systemName: systemName)?.withRenderingMode(.alwaysTemplate)
        super.init(image: image)
        self.contentMode = .scaleAspectFit
        self.tintColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
