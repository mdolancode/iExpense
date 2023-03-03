//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-03-02.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currency?.identifier ?? "USD")
    }
}
