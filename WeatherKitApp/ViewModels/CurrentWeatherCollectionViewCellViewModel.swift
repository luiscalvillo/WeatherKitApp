//
//  CurrentWeatherCollectionViewCellViewModel.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/27/24.
//

import Foundation
import WeatherKit

struct CurrentWeatherCollectionViewCellViewModel {
    
    private let model: CurrentWeather
    
    init(model: CurrentWeather) {
        self.model = model
    }
    
    public var condition: String {
        return model.condition.description
    }
    
    public var temperature: String {
        return model.temperature.description
    }
    
    public var iconName: String {
        return model.temperature.description
    }
}

