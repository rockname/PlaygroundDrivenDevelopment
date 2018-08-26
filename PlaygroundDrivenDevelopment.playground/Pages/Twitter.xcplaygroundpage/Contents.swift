import UIKit
import PlaygroundSupport
import Presentation
import Mock
import Domain

let mockContainer = MockContainer.shared

let statuses: [Status] = [
    mockContainer.mockMyStatus,
    mockContainer.mockStatus01,
    mockContainer.mockStatus02,
    mockContainer.mockStatus03,
    mockContainer.mockTooLongStatus
]

func display(device: Device, orientation: Orientation, language: Language) {
    let vc = R.storyboard.twitter.instantiateInitialViewController()!
    let (parent, _) = playgroundControllers(device: device, orientation: .portrait, child: vc)
    AppEnvironment.language = language
    PlaygroundPage.current.liveView = parent
    vc.load(statuses)
}

display(device: .phone3_5inch, orientation: .portrait, language: .ja)
display(device: .phone3_5inch, orientation: .portrait, language: .en)
display(device: .phone4inch, orientation: .portrait, language: .ja)
display(device: .phone4inch, orientation: .portrait, language: .en)
display(device: .phone4_7inch, orientation: .portrait, language: .ja)
display(device: .phone4_7inch, orientation: .portrait, language: .en)
display(device: .phone5_5inch, orientation: .portrait, language: .ja)
display(device: .phone5_5inch, orientation: .portrait, language: .en)
display(device: .pad, orientation: .portrait, language: .ja)
display(device: .pad, orientation: .portrait, language: .en)
