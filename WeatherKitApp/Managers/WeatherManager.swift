//
//  WeatherManager.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/25/24.
//

import Foundation
import WeatherKit
import CoreLocation

final class WeatherManager {
    static let shared = WeatherManager()
    
    let service = WeatherService.shared
    
    private init() {}
    
    public func getWeather(for location: CLLocation, completion: @escaping () -> Void) {
        Task {
            do {
                let result = try await service.weather(for: location)
                
                print("\(result.currentWeather)")
                completion()
            } catch {
                print(String(describing: error))
            }
        }
        
    }
}
