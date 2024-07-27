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
}
