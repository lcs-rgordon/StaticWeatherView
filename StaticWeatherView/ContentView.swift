//
//  ContentView.swift
//  StaticWeatherView
//
//  Created by Russell Gordon on 2021-10-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Use layers to show background colour
        // See page 79 of SwiftUI Views Quick Start
        // https://www.bigmountainstudio.com/free-swiftui-book
        ZStack {
            
            // First layer
            // For gradient example, see: https://www.hackingwithswift.com/quick-start/swiftui/how-to-render-a-gradient
            LinearGradient(colors: [.blue, .white],
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // Second layer
            VStack {
                
                TitleBarView()
                    .padding(.bottom, 50)
                                
                VStack(spacing: 50) {
                    
                    TemperatureAndWindView()
                
                    Past24HoursView()
                    
                }
                
                Spacer()
                
                    

            }
            .foregroundColor(.white)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
