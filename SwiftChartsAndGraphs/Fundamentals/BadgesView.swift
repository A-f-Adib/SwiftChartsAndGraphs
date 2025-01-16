//
//  BadgesView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 16/1/25.
//

import SwiftUI

//Badges can be implemented by in list and tabview


struct BadgesView: View {
    
    @State var cities = ["London", "New York", "WashingtonDC"]
    
    var body: some View {
        
        List{
            Text(cities[0])
                .badge("Visited")
            Text(cities[1])
                .badge("Need to go")
            Text(cities[2])
                .badge(30)
            
        }
    }
}

#Preview {
    BadgesView()
}
