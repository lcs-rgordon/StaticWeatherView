//
//  TemperatureAndWindView.swift
//  StaticWeatherView
//
//  Created by Russell Gordon on 2021-10-05.
//

import SwiftUI

struct TemperatureAndWindView: View {
    var body: some View {
        
        // Temperature and wind
        VStack {
            Text("14 °C")
                .font(.largeTitle)
            
            Text("Wind: NE 6 km/h")
                .font(.subheadline)
        }

    }
}

struct TemperatureAndWindView_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureAndWindView()
    }
}
