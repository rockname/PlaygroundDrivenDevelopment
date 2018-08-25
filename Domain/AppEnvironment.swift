//
//  AppEnvironment.swift
//  PlaygroundDrivenDevelopment
//
//  Created by rockname on 2018/08/23.
//  Copyright © 2018年 rockname. All rights reserved.
//

import Foundation

public struct AppEnvironment {
    public static var language: Language = .ja
    public static var currentUser: String? = nil
    public var isLoggedIn: Bool {
        return AppEnvironment.currentUser != nil
    }
}
