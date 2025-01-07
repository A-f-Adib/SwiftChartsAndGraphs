//
//  AreaChartView.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 8/1/25.
//

import SwiftUI
import Charts

struct AreaChartView: View {
    
    let catData = PetData.catExmpl
    let dogData = PetData.dogExmpl
    
    var data: [(type: String, petData: [PetData])] {
        [
            (type: "cat", petData: catData),
            (type: "dog", petData: dogData)
        ]
    }
    
    var body: some View {
        
        Chart(data, id: \.type) { dataSeries in
            ForEach(dataSeries.petData) { data in
                AreaMark(x: .value("Year", data.year),
                         y: .value("Population", data.population))
            }
            .foregroundStyle(by: .value("Pet type", dataSeries.type))
            .symbol(by: .value("Pet type", dataSeries.type))
        }
        .chartXScale(domain: 1998...2025)
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

#Preview {
    AreaChartView()
}
