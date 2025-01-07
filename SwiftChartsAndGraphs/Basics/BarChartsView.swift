//
//  BarChartsView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 7/1/25.
//

import SwiftUI
import Charts

struct BarChartsView: View {
    
    let data = [ChartData(type: "Bird", count: 10),
                ChartData(type: "Dog", count: 21),
                ChartData(type: "Cat", count: 35),
                ChartData(type: "Fish", count: 48),
                ChartData(type: "Tree", count: 60)]
    
    var body: some View {
        
        Chart(data) { dataPoint in
            BarMark(x: .value("Population", dataPoint.count),
                    y: .value("Type", dataPoint.type))
            .foregroundStyle(by: .value("Type", dataPoint.type))
            .annotation(position: .trailing) {
                Text(String(dataPoint.count))
                    .foregroundStyle(Color.gray)
            }
        }
        .chartLegend(.hidden)
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

#Preview {
    BarChartsView()
}
