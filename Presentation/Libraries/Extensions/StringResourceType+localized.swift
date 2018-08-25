//
//  StringResourceType+localized.swift
//  Presentation
//
//  Created by rockname on 2018/08/25.
//  Copyright © 2018年 rockname. All rights reserved.
//

import Foundation
import Rswift
import Domain

extension StringResourceType {
    func localized(language: Language = AppEnvironment.language) -> String {
        return NSLocalizedString(key, bundle: Bundle(path: stringsBundle.path(forResource: language.rawValue, ofType: "lproj") ?? "") ?? stringsBundle, comment: "")
    }
}

private class Pin {}
public let stringsBundle = Bundle(for: Pin.self)
