//
//  DoubleExtent.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 11/9/2024.
//

import Foundation


extension Double{
    private var format: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    private var pFormat: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrency() -> String{
        return format.string(for: self) ?? "$0.00"
    }
    
    func toPercent() -> String{
        guard let numString = pFormat.string(for: self) else {return ""}
        return numString + "%"
    }
    
}
