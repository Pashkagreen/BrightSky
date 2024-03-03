//
//  CurrentWeatherViewModel.swift
//  BrightSky
//
//  Created by Paul Grin on 03/03/2024.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModel: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModel: [DailyWeatherCollectionViewCellViewModel])
}
