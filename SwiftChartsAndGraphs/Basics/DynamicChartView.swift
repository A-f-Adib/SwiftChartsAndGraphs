//
//  DynamicChartView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 7/1/25.
//

import SwiftUI
import Charts

struct ChartData: Identifiable, Equatable {
    
    var id: String { return type }
    let type: String
    let count: Int
}


struct DynamicChartView: View {
    
    let data = [ChartData(type: "Bird", count: 1),
                ChartData(type: "Dog", count: 2),
                ChartData(type: "Cat", count: 3)]
    
    var maxCharData : ChartData? {
        data.max { $0.count < $1.count }
    }
    
    var body: some View {
        
        Chart {
            ForEach(data) { dataPoint in
                BarMark(x: .value("Type", dataPoint.type),
                        y: .value("Population", dataPoint.count))
                .opacity(maxCharData == dataPoint ? 1 : 0.5)
            }
            
            RuleMark(y: .value("Average", 1.5))
                .foregroundStyle(.gray)
                .annotation(position: .bottom, alignment: .bottomLeading) {
                    Text("average 1.5")
                }
        }
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

#Preview {
    DynamicChartView()
}
