//
//  SalesViewModel.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 9/1/25.
//

import Foundation

class SalesViewModel : ObservableObject {
    
    @Published var salesData = [Sale]()
    
    var totalSales: Int {
        salesData.reduce(0) { $0 + $1.quantity }
    }
    @Published var lastTotalSales: Int = 0
    
    
    init() {
        
    }
    
    static var preview: SalesViewModel {
        let vm = SalesViewModel()
        vm.salesData = Sale.examples
        vm.lastTotalSales = 1200
        return vm
    }
}
