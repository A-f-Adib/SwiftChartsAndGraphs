//
//  RectangleChartView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 8/1/25.
//

import SwiftUI
import Charts

struct RectangleChartView: View {
    
    let catData = PetData.catExmpl
    
    var body: some View {
        Chart {
            ForEach(catData) { dataPoint in
                RectangleMark(x: .value("Year", dataPoint.year),
                              y: .value("Population", dataPoint.population),
                              width: .fixed(50),
                              height: .fixed(10))
            }
        }
        .chartXScale(domain: 1998...2025)
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

#Preview {
    RectangleChartView()
}
