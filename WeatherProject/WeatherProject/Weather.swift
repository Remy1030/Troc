//
//  Weather.swift
//  WeatherProject
//
//  Created by Apprenant 08 on 03/05/2023.
//

import Foundation

struct Weather: Identifiable{
    var id = UUID()
    var name: String
    var image: String
}


var weathers = [
    Weather(name: "Sopleil", image: "sun.max.fill"),
    Weather(name: "Lune", image: "moon.fill"),
    Weather(name: "Nuage", image: "cloud")
]
