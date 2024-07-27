//
//  DailyWeatherCollectionViewCellViewModel.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/27/24.
//

import Foundation
import WeatherKit

struct DailyWeatherCollectionViewCellViewModel {
    
    private let model: DayWeather
    
    init(model: DayWeather) {
        self.model = model
    }
}
