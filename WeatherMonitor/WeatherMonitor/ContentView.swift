//
//  ContentView.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Minha Localização")
                    .font(.subheadline)
                Text("Sorocaba")
                    .font(.title)
                Text("22°")
                    .font(.system(size: 90))
                
                HStack (spacing: 10){
                    Image(systemName: "cloud.rain")
                }
                
                HStack (spacing: 15){
                    Text("Mím.: 21°")
                    Text("Máx.: 31°")
                }
            }
            .padding(.vertical, 50)
            
            VStack {
                HStack (spacing: 10){
                    Image(systemName: "calendar")
                        .foregroundColor(Color.gray.opacity(0.5))
                    Text("Previsão para 7 dias")
                        .font(.subheadline)
                }
                
                ForEach(weeklyWeather) { weather in
                    Divider()
                    HStack (spacing: 10){
                        Text(weather.day).frame(maxWidth: .infinity)
                        Text(weather.temp).frame(maxWidth: .infinity)
                        Text("\(weather.min)").frame(maxWidth: .infinity)
                        Text("\(weather.max)").frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 5)
                }
            }
            .padding(.vertical, 10)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .frame(alignment: .leading)
            
            Spacer()
            
            VStack {
                HStack (spacing: 10){
                    Image(systemName: "calendar")
                        .foregroundColor(Color.gray.opacity(0.5))
                    Text("1 ano atrás")
                        .font(.subheadline)
                }
                
                HStack (spacing: 10){
                    Text("dia").frame(maxWidth: .infinity)
                    Text("temp").frame(maxWidth: .infinity)
                    Text("min").frame(maxWidth: .infinity)
                    Text("max").frame(maxWidth: .infinity)
                }
                .padding(.vertical, 5)
                
            }
            .padding(.vertical, 10)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .frame(alignment: .leading)
            
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 20)
        
    }
    
}

struct DailyWeather: Identifiable {
    let id = UUID()
    let day : String
    let temp : String
    let min : Int
    let max : Int
}

let weeklyWeather: [DailyWeather] = [
    DailyWeather(day: "Mon", temp: "20°C", min: 15, max: 25),
    DailyWeather(day: "Tue", temp: "22°C", min: 16, max: 26),
    DailyWeather(day: "Wed", temp: "18°C", min: 14, max: 24),
    DailyWeather(day: "Thu", temp: "18°C", min: 14, max: 24),
    DailyWeather(day: "Fri", temp: "18°C", min: 14, max: 24),
    DailyWeather(day: "Sat", temp: "18°C", min: 14, max: 24),
    DailyWeather(day: "Sun", temp: "18°C", min: 14, max: 24),
]

#Preview {
    ContentView()
}
