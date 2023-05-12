//
//  ListWeatherView.swift
//  WeatherProject
//
//  Created by Apprenant 08 on 03/05/2023.
//

import SwiftUI

struct ListWeatherView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List(weathers){ weather in
                    NavigationLink {
                        DetailWeatherView(weather: weather)
                    } label: {
                        HStack {
                            Image(systemName: weather.image)
                            Text(weather.name)
                        }
                    }

              
                }
            }
        }
    }
}

struct ListWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ListWeatherView()
    }
}
