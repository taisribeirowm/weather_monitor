//
//  WeatherService.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import Foundation

enum WeatherError: Error {
    case invalidURL
    case requestFailed
    case decodingFailed
}

final class WeatherService {
    
    private let apiKey: String
    private let baseURL = "https://api.weatherapi.com/v1"
    
    init(apiKey: String) {
        self.apiKey = apiKey
    }
    
    func fetchCurrentWeather(for city: String) async throws -> WeatherResponse {
        
        guard let encodedCity = city.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "\(baseURL)/current.json?key=\(apiKey)&q=\(encodedCity)&lang=pt") else {
            throw WeatherError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw WeatherError.requestFailed
        }
        
        do {
            return try JSONDecoder().decode(WeatherResponse.self, from: data)
        } catch {
            throw WeatherError.decodingFailed
        }
    }
    
    func fetch7DayForecast(for city: String) async throws -> WeatherForecastResponse {
        
        guard let encodedCity = city.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "\(baseURL)/forecast.json?key=\(apiKey)&q=\(encodedCity)&days=7&lang=pt") else {
            throw WeatherError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw WeatherError.requestFailed
        }
        
        do {
            return try JSONDecoder().decode(WeatherForecastResponse.self, from: data)
        } catch {
            throw WeatherError.decodingFailed
        }
    }
    
}
