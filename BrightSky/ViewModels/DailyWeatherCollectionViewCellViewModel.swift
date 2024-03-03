//
//  DailyWeatherCollectionViewCellViewModel.swift
//  BrightSky
//
//  Created by Paul Grin on 03/03/2024.
//

import Foundation
import WeatherKit

struct DailyWeatherCollectionViewCellViewModel {
    private let model: DayWeather
    
    init(model: DayWeather) {
        self.model = model
    }
}
