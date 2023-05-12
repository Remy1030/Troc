//
//  DetailWeatherView.swift
//  WeatherProject
//
//  Created by Apprenant 08 on 03/05/2023.
//

import SwiftUI

struct DetailWeatherView: View {
    var weather: Weather
    var body: some View {
        Image(systemName: weather.image)
    }
}

struct DetailWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWeatherView(weather: Weather(name: "ant", image: "ant"))
    }
}
