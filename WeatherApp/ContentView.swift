//
//  ContentView.swift
//  WeatherApp
//
//  Created by Alexander Rojas Benavides on 3/19/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                    .padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }
            }.padding(.top, 30)
        }.background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5407095551, green: 0.7623606324, blue: 0.975662291, alpha: 1)), Color(#colorLiteral(red: 0.4177498519, green: 0.5340259075, blue: 0.9375404716, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
