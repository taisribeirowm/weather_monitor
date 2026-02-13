//
//  ForecastCard.swift
//  WeatherMonitor
//
//  Created by Tais.Ribeiro on 13/02/26.
//

import SwiftUI

struct ForecastCard: View {
    
    let day: ForecastDay
    
    var body: some View {
        VStack(spacing: 8) {
            
            Text(formatDate(day.date))
                .font(.caption)
            
            AsyncImage(url: URL(string: "https:\(day.day.condition.icon)")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            
            Text("\(day.day.maxtemp_c, specifier: "%.0f")°")
                .bold()
            
            Text("\(day.day.mintemp_c, specifier: "%.0f")°")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
    
    private func formatDate(_ dateString: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "dd/MM"
            return formatter.string(from: date)
        }
        return dateString
    }
}
