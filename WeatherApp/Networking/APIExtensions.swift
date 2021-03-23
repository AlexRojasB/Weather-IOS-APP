//
//  APIExtensions.swift
//  WeatherApp
//
//  Created by Alexander Rojas Benavides on 3/19/21.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(Key)&units=imperial"
    }
}
