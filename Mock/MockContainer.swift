//
//  MockContainer.swift
//  Mock
//
//  Created by rockname on 2018/06/27.
//  Copyright © 2018年 rockname. All rights reserved.
//

import Foundation
import Domain
import SwiftDate

public class MockContainer {
    public static var shared = MockContainer()

    public var mockStatuses: [Status] {
        return [
            mockMyStatus,
            mockStatus01,
            mockStatus02,
            mockStatus03,
            mockTooLongStatus
        ]
    }

    public var mockMyStatus: Status
    public var mockStatus01: Status
    public var mockStatus02: Status
    public var mockStatus03: Status
    public var mockTooLongStatus: Status

    private init() {
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let userIconDirectory = documentDirectory.appendingPathComponent("userIcon")
        try? FileManager.default.createDirectory(at: userIconDirectory, withIntermediateDirectories: true)
        let unknownIconUrl = userIconDirectory.appendingPathComponent("unknownUserIcon.png")
        try? UIImageJPEGRepresentation(R.image.unknown()!, 1.0)?.write(to: unknownIconUrl)

        let myIconUrl = userIconDirectory.appendingPathComponent("myUserIcon.png")
        try? UIImageJPEGRepresentation(R.image.rockname()!, 1.0)?.write(to: myIconUrl)

        mockMyStatus = Status(
            id: "1",
            userId: "_rockname",
            userNmae: "rockname",
            body: "My name is rockname.",
            iconUrl: myIconUrl,
            attachmentImageUrls: [],
            createdAt: Date()
        )

        mockStatus01 = Status(
            id: "2",
            userId: "abcde",
            userNmae: "sample",
            body: "I'm so fun.",
            iconUrl: unknownIconUrl,
            attachmentImageUrls: [],
            createdAt: Date() - 1.minute
        )

        mockStatus02 = Status(
            id: "3",
            userId: "fghij",
            userNmae: "unknown",
            body: "Yeah!",
            iconUrl: unknownIconUrl,
            attachmentImageUrls: [],
            createdAt: Date() - 1.hour
        )
        mockStatus03 = Status(
            id: "4",
            userId: "klmno",
            userNmae: "test",
            body: "This is a sample text.",
            iconUrl: unknownIconUrl,
            attachmentImageUrls: [],
            createdAt: Date() - 1.day
        )
        mockTooLongStatus = Status(
            id: "5",
            userId: "pqrstuvwz",
            userNmae: "too long text man",
            body: """
                On the 9th. William Findley and David Redick--deputed by the Committee of Safety (as it is designated) which met on the 2d. of this month at Parkinson Ferry arrived in Camp with the Resolutions of the said Committee; and to give information of the State of things in the four Western Counties of Pennsylvania to wit--Washington Fayette Westd. & Alligany in order to see if it would prevent the March of the Army into them.
                """,
            iconUrl: unknownIconUrl,
            attachmentImageUrls: [],
            createdAt: Date() - 7.days
        )

    }
}
