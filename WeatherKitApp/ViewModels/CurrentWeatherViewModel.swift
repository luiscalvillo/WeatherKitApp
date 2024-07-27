//
//  CurrentWeatherViewModel.swift
//  BrightSkyWeather
//
//  Created by Luis Calvillo on 7/27/24.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModels: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModels: [DailyWeatherCollectionViewCellViewModel])
}
