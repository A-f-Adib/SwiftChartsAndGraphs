//
//  PetData.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 7/1/25.
//

import Foundation

struct PetData : Identifiable, Equatable {
    
    let year : Int
    let population: Double
    var id: Int { year }
    
    static var catExmpl: [PetData] {
       [ PetData(year: 2000, population: 6.8),
         PetData(year: 2010, population: 8.2),
         PetData(year: 2015, population: 10.5),
         PetData(year: 2025, population: 16.3)]
    }
    
    static var dogExmpl: [PetData] {
       [ PetData(year: 2000, population: 4.5),
         PetData(year: 2010, population: 6.5),
         PetData(year: 2015, population: 9.1),
         PetData(year: 2025, population: 12.8)]
    }
}
