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
                
                BarMark(x: .value("Type", "Dog"),
                        y: .value("Population", 2 ))
                .opacity(0.5)
                
                BarMark(x: .value("Type", "Cat"),
                        y: .value("Population", 3 ))
                
                if avgShown {
                    RuleMark(y: .value("Average", 1.5))
                        .foregroundStyle(.gray)
                        .annotation(position: .bottom, alignment: .bottomLeading) {
                            Text("average 1.5")
                        }
                }
            }
            .aspectRatio(1, contentMode: .fit)
            
            Toggle(avgShown ? "Show average" : "Hide average", isOn: $avgShown)
        }
        .padding()
    }
}

#Preview {
    StaticChartView()
}
