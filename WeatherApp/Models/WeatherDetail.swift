//
//  WeatherDetail.swift
//  WeatherApp
//
//  Created by Alexander Rojas Benavides on 3/19/21.
//

import Foundation

struct WeatherDetail: Codable {
    var main: String
    var description: String
    var icon: String
    
    enum CodingKey: String {
        case main
        case description
        case icon
    }
    
    init() {
        main = ""
        description = ""
        icon = ""
    }
}
