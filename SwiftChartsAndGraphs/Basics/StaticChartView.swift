//
//  StaticChartView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 7/1/25.
//

import SwiftUI
import Charts

struct StaticChartView: View {
    
    @State private var avgShown  = false
    
    var body: some View {
        VStack {
            Chart {
                BarMark(x: .value("Type", "Bird"),
                        y: .value("Population", 1 ))
                .opacity(0.5)
            }
        }
    }
}

#Preview {
    StaticChartView()
}
