//
//  DailySalesChartView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 9/1/25.
//

import SwiftUI
import Charts


struct DailySalesChartView: View {
    
    let salesData: [Sale]
    
    var body: some View {
        
        Chart(salesData) { sale in
            BarMark(x: .value("Day", sale.saleDate, unit: .day),
                    y: .value("Sales", sale.quantity))
        }
    }
}

#Preview {
    DailySalesChartView(salesData: Sale.threeMonthsExmpl())
        .aspectRatio(1, contentMode: .fit)
        .padding()
}
