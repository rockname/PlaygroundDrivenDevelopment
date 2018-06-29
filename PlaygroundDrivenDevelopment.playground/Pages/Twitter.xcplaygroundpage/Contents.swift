import UIKit
import PlaygroundSupport
import Presentation
import Mock

let mockContainer = MockContainer.shared

let vc = R.storyboard.twitter.instantiateInitialViewController()!
PlaygroundPage.current.liveView = vc

let statuses = [
    mockContainer.mockMyStatus,
    mockContainer.mockStatus01,
    mockContainer.mockStatus02,
    mockContainer.mockStatus03,
    mockContainer.mockTooLongStatus
]

vc.load(statuses)
