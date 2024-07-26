//
//  SettingsViewViewModel.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/25/24.
//

import Foundation

struct SettingsViewViewModel {
    let options: [SettingOption]
}

enum SettingOption: CaseIterable {
    case privacyPolicy
    case terms
    case rateApp
    
    var title: String {
        switch self {
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms of Use"
        case .rateApp:
            return "Rate App"
        }
    }
}
