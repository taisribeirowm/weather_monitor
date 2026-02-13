//
//  WeatherViewModel.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import Foundation
import SwiftUI
internal import Combine

@MainActor
class WeatherViewModel: ObservableObject {
    
    @Published var weather: WeatherResponse?
    @Published var forecast: WeatherForecastResponse?
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var city: String = ""
    
    private let service = WeatherService(apiKey: "78ca19628e8d47abaf4195149261202")
    
    func fetchWeather() async {
        guard !city.isEmpty else { return }
        
        isLoading = true
        errorMessage = nil
        
        do {
            weather = try await service.fetchCurrentWeather(for: city)
            forecast = try await service.fetch7DayForecast(for: city)
        } catch {
            errorMessage = "Erro ao buscar clima."
        }
        
        isLoading = false
    }
}
