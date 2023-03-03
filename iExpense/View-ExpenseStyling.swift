//
//  View-ExpenseStyling.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-03-02.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self.foregroundColor(.black)
        } else if item.amount < 100 {
            return self.foregroundColor(.green)
        } else {
            return self.foregroundColor(.red)
        }
    }
}
