//
//  eather Response.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import Foundation

struct WeatherResponse: Codable {
    let location: Location
    let current: CurrentWeather
}

struct Location: Codable {
    let name: String
    let region: String
    let country: String
    let localtime: String
}

struct CurrentWeather: Codable {
    let temp_c: Double
    let condition: Condition
    let wind_kph: Double
    let humidity: Int
}

struct Condition: Codable {
    let text: String
    let icon: String
}
