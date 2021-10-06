//
//  TitleBarView.swift
//  StaticWeatherView
//
//  Created by Russell Gordon on 2021-10-05.
//

import SwiftUI

struct TitleBarView: View {
    var body: some View {
        
        // Title bar
        HStack {
            
            Image(systemName: "text.justify")
            
            Spacer()
            
            HStack(spacing: 10) {
                
                Text("Lakefield, ON")
                                        
                Image(systemName: "magnifyingglass")
            }
            
            Spacer()
            
            // For more on SF Symbols:
            // https://www.hackingwithswift.com/articles/237/complete-guide-to-sf-symbols
            // Be sure to set deployment target to iOS 15 to use colours in SF Symbols, see this image for where to find this setting in Xcode:
            // https://i.stack.imgur.com/wbjYu.jpg
            Image(systemName: "envelope.badge")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.green, .white)
            
        }
        .font(.title2)
        .padding(.horizontal)

    }
}

struct TitleBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            TitleBarView()
                .foregroundColor(.white)
        }
        
            
    }
}
