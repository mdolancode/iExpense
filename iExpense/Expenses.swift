//
//  Expenses.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-01-09.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
