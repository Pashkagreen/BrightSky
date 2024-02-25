//
//  SettingsViewViewModel.swift
//  BrightSky
//
//  Created by Paul Grin on 25/02/2024.
//

import Foundation

struct SettingsViewViewModel {
    let options: [SettingsOption]
}

enum SettingsOption: CaseIterable {
    case upgrade, privacyPolicy, terms, contact, getHelp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrade to Pro"
        case .contact:
            return "Contact us"
        case .getHelp:
            return "Get Help"
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms of Use"
        }
    }
}
