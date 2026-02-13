//
//  WeatherForecastResponse.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import Foundation

struct WeatherForecastResponse: Codable {
    let location: Location
    let current: CurrentWeather
    let forecast: Forecast
}

struct Forecast: Codable {
    let forecastday: [ForecastDay]
}

struct ForecastDay: Codable, Identifiable {
    var id: String { date }
    
    let date: String
    let day: Day
}

struct Day: Codable {
    let maxtemp_c: Double
    let mintemp_c: Double
    let condition: Condition
}
