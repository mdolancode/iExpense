//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-01-09.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
