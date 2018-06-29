import UIKit
import PlaygroundSupport
import Presentation
import Mock

let vc = R.storyboard.twitter.instantiateInitialViewController()!
PlaygroundPage.current.liveView = vc

let statuses = Array(MockContainer.shared.mockStatuses[0..<5])
vc.load(statuses)
