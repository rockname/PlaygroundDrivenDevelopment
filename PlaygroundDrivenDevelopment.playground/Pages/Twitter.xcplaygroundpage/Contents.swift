import UIKit
import PlaygroundSupport
import Presentation
import Mock
import Domain

let mockContainer = MockContainer.shared
AppEnvironment.language = .ja
let vc = R.storyboard.twitter.instantiateInitialViewController()!
let (parent, _) = playgroundControllers(device: .pad, orientation: .portrait, child: vc)

PlaygroundPage.current.liveView = parent

let statuses: [Status] = [
//    mockContainer.mockMyStatus,
//    mockContainer.mockStatus01,
//    mockContainer.mockStatus02,
//    mockContainer.mockStatus03,
//    mockContainer.mockTooLongStatus
]

vc.load(statuses)
