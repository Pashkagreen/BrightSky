//
//  WeatherViewController.swift
//  BrightSky
//
//  Created by Paul Grin on 24/02/2024.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let primaryView = CurrentWeatherView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        getLocation()
    }
    
    private func getLocation() {
        LocationManager.shared.getCurrentLocation{ location in
            print(String(describing: location))
            
            WeatherManager.shared.getWeather(for: location) {
                print("OK")
            }
        }
    }

    private func setUpView() {
        view.backgroundColor = .systemBackground
        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

