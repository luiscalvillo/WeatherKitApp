//
//  WeatherVC.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/25/24.
//

import UIKit

class WeatherVC: UIViewController {
    
    private let primaryView = CurrentWeatherView()

    override func viewDidLoad() {
        super.viewDidLoad()
   
        setUpView()
        getLocation()
    }

    private func getLocation() {
        LocationManager.shared.getCurrentLocation { location in
            print(String(describing: location))
            
            WeatherManager.shared.getWeather(for: location) { [weak self] in
                
                DispatchQueue.main.async {
                    guard let currentWeather = WeatherManager.shared.currentWeather else { return }
                    self?.primaryView.configure(with: [
                        .current(viewModel: .init(model: currentWeather)),
                        .hourly(viewModels: WeatherManager.shared.hourlyWeather.compactMap({ .init(model: $0) })),
                        .daily(viewModels: WeatherManager.shared.dailyWeather.compactMap({ .init(model: $0) })),
                    ])
                }
            }
        }
    }
    
    private func setUpView() {
        view.backgroundColor = .orange
        
        view.addSubview(primaryView)
        
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

