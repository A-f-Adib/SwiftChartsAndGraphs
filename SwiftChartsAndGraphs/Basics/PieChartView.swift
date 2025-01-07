//
//  PieChartView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 8/1/25.
//

import SwiftUI
import Charts

struct PieChartView: View {
    
    let catData = PetData.catExmpl
    let dogData = PetData.dogExmpl
    
    var catTotal : Double {
        catData.reduce(0) { $0 + $1.population }
    }
    
    var dogTotal : Double {
        dogData.reduce(0) { $0 + $1.population }
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PieChartView()
}
