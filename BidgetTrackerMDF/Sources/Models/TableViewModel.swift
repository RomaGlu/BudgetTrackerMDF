//
//  Model.swift
//  BidgetTrackerMDF
//
//  Created by Роман Глухарев on 05/07/2023.
//

import Foundation

struct TableViewModel {
    var settingTitle: String
    var settingDescription: String
    var settingImageBackground: String
    var settingImage: String
    var isSwitch: Bool?
    var info: String?
}

extension TableViewModel {
    static var settings: [TableViewModel] = [
        TableViewModel(settingTitle: "Settings title here", settingDescription: "Setting status", settingImageBackground: "oval", settingImage: "mountain", isSwitch: true),
        TableViewModel(settingTitle: "Notification", settingDescription: "Setting status", settingImageBackground: "oval", settingImage: "mountain", isSwitch: true),
        TableViewModel(settingTitle: "Settings title here", settingDescription: "Setting status", settingImageBackground: "oval", settingImage: "mountain"),
        TableViewModel(settingTitle: "Settings title here", settingDescription: "Setting status", settingImageBackground: "oval", settingImage: "mountain"),
        TableViewModel(settingTitle: "Settings title here", settingDescription: "Setting status", settingImageBackground: "oval", settingImage: "mountain"),
        TableViewModel(settingTitle: "About this app", settingDescription: "Setting status", settingImageBackground: "oval", settingImage: "mountain", info: "v2.0.21")
    ]
}
