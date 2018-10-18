//
//  Forecast.swift
//  WeatherApp
//
//  Created by Avinash on 10/18/18.
//  Copyright © 2018 SecondGenPESH. All rights reserved.
//

import Foundation


struct Forecast: Codable {
    
    struct Currently: Codable {
        let apparentTemperature: Double
        let temperature: Double
        let summary: String
    }
    
    let currently: Currently
    
}


