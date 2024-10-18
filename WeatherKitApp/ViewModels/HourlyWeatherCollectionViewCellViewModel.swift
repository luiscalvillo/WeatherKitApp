//
//  HourlyWeatherCollectionViewModel.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/27/24.
//

import Foundation
import WeatherKit

struct HourlyWeatherCollectionViewCellViewModel {
    
    private let model: HourWeather
    
    init(model: HourWeather) {
        self.model = model
    }
    
    public var iconName: String {
        return model.symbolName
    }
    
    public var temperature: String {
        return "\(Int(model.temperature.converted(to: .fahrenheit).value))°"
    }
    
    public var hour: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h a"  // 'h' is for 12-hour format, 'a' is for AM/PM
        return formatter.string(from: model.date)
    }
}
