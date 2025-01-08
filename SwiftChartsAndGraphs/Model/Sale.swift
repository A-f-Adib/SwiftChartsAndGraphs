//
//  Sale.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 9/1/25.
//

import Foundation

struct Sale: Identifiable, Equatable {
    
    let id: UUID
    let book: Book
    let quantity: Int
    let saleDate: Date
    
    static var example = Sale(id: UUID(),
                              book: Book.examples[0],
                              quantity: 5,
                              saleDate: Date(timeIntervalSinceNow: -7_200_000))
    
    static var examples = [
           Sale(id: UUID(), book: Book.examples[0], quantity: 5, saleDate: Date(timeIntervalSinceNow: -7_200_000)),
           Sale(id: UUID(), book: Book.examples[1], quantity: 3, saleDate: Date(timeIntervalSinceNow: -14_400_000)),
           Sale(id: UUID(), book: Book.examples[2], quantity: 6, saleDate: Date(timeIntervalSinceNow: -21_600_000)),
           Sale(id: UUID(), book: Book.examples[3], quantity: 4, saleDate: Date(timeIntervalSinceNow: -28_800_000)),
           Sale(id: UUID(), book: Book.examples[4], quantity: 2, saleDate: Date(timeIntervalSinceNow: -36_000_000)),
           Sale(id: UUID(), book: Book.examples[5], quantity: 3, saleDate: Date(timeIntervalSinceNow: -43_200_000)),
           Sale(id: UUID(), book: Book.examples[6], quantity: 5, saleDate: Date(timeIntervalSinceNow: -50_400_000)),
           Sale(id: UUID(), book: Book.examples[7], quantity: 6, saleDate: Date(timeIntervalSinceNow: -57_600_000)),
           Sale(id: UUID(), book: Book.examples[8], quantity: 3, saleDate: Date(timeIntervalSinceNow: -64_800_000)),
           Sale(id: UUID(), book: Book.examples[9], quantity: 4, saleDate: Date(timeIntervalSinceNow: -72_000_000))
       ]
}
