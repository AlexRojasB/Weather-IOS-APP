//
//  CityView.swift
//  WeatherApp
//
//  Created by Alexander Rojas Benavides on 3/19/21.
//

import SwiftUI

struct CityView: View {
    @ObservedObject var cityVM: CityViewModel
    
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0 )
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
                .padding(.horizontal, 20)
            DailyWeatherView(cityWM: cityVM)
            
                
        }.padding(.bottom, 30)
        
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
