//
//  ContentView.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Minha Localização")
                .font(.title)
                .bold()
            
            TextField("Digite a cidade", text: $viewModel.city)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Buscar") {
                Task {
                    await viewModel.fetchWeather()
                }
            }
            .buttonStyle(.borderedProminent)
            
            
            if viewModel.isLoading {
                ProgressView()
            }
            
            if let weather = viewModel.weather {
                VStack(spacing: 10) {
                    Text(weather.location.name)
                        .font(.title2)
                        .bold()
                    
                    Text("\(weather.current.temp_c, specifier: "%.1f")°C")
                        .font(.system(size: 40))
                        .bold()
                    
                    VStack{
                        AsyncImage(url: URL(string: "https:\(weather.current.condition.icon)")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 50)
                        
                        Text(weather.current.condition.text)
                    }
                    
                    Text("Umidade: \(weather.current.humidity)%")
                    Text("Vento: \(weather.current.wind_kph) km/h")
                }
                .padding(50)
            }
            
            if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }
            
            if let forecast = viewModel.forecast {
                
                HStack (spacing: 10){
                    Image(systemName: "calendar")
                            .foregroundColor(Color.gray.opacity(0.5))
                    Text("Previsão para 7 dias")
                            .font(.title2)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(forecast.forecast.forecastday) { day in
                            ForecastCard(day: day)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            
            if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}


