//
//  Date+timeago.swift
//  Presentation
//
//  Created by rockname on 2018/08/26.
//  Copyright © 2018年 rockname. All rights reserved.
//

import Foundation
import SwiftDate

extension Date {
    func timeago(from date: Date) -> String {
        assert(self < date)

        let diff = date - self
        switch diff {
        case let d where d < 60:
            return String(format: R.string.localizable.dSecondSAgo.localized(), Int(d))
        case let d where d < 60 * 60:
            return String(format: R.string.localizable.dMinuteSAgo.localized(), Int(d / 60))
        case let d where d < 24 * 60 * 60:
            return String(format: R.string.localizable.dHourSAgo.localized(), Int(d / 60 / 60))
        case let d where d < 7 * 24 * 60 * 60:
            return String(format: R.string.localizable.dDaySAgo.localized(), Int(d / 24 / 60 / 60))
        default:
            return self.string(custom: "yyyy/MM/dd")
        }
    }

    var timeagoFromNow: String {
        return timeago(from: Date())
    }
}
