//
//  Expense.swift
//  SwiftChartsAndGraphs
//
//  Created by A.F. Adib on 9/1/25.
//

import Foundation

struct Expense: Identifiable {
    
    let id = UUID()
    let title: String
    let category: ExpenseCategory
    let amount: Double
    let expenseDate: Date
    
    static var example = Expense(title: "Rent",
                                 category: .fixed, amount: 2000,
                                 expenseDate: Date(timeIntervalSinceNow: -7_200_000))
    
    static var examples = [
            Expense(title: "Rent", category: .fixed, amount: 2000, expenseDate: Date(timeIntervalSinceNow: -7_200_000)),
            Expense(title: "Salaries", category: .fixed, amount: 5000, expenseDate: Date(timeIntervalSinceNow: -14_400_000)),
            Expense(title: "Utilities", category: .fixed, amount: 600, expenseDate: Date(timeIntervalSinceNow: -21_600_000)),
            Expense(title: "Marketing", category: .variable, amount: 1000, expenseDate: Date(timeIntervalSinceNow: -28_800_000)),
            Expense(title: "Inventory", category: .variable, amount: 3000, expenseDate: Date(timeIntervalSinceNow: -36_000_000)),
            Expense(title: "Maintenance", category: .fixed, amount: 500, expenseDate: Date(timeIntervalSinceNow: -43_200_000)),
            Expense(title: "Equipment", category: .variable, amount: 1500, expenseDate: Date(timeIntervalSinceNow: -50_400_000))
        ]
}


enum ExpenseCategory {
    
    case fixed
    case variable
    
    var displayName: String {
        switch self {
        case .fixed:
            "Fixed"
        case .variable:
            "Variable"
        }
    }
}
