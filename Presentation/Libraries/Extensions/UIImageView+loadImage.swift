//
//  UIImageView+loadImage.swift
//  Presentation
//
//  Created by rockname on 2018/06/26.
//  Copyright © 2018年 rockname. All rights reserved.
//

import Foundation
import Nuke

extension UIImageView {
    func loadImage(with url: URL) {
        Manager.shared.loadImage(with: url, into: self)
    }
}
