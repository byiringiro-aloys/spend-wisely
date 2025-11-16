//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//

import SwiftUI
import Foundation

extension Color{
    static let appBackground = Color("Background")
    static let AppIcon = Color("Icon")
    static let appText = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter{
    static let customFormatter: DateFormatter = {
        print("Initializing DataFormer")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}

extension String{
    func dateParse()-> Date {
        guard let parsedData = DateFormatter.customFormatter.date(from: self) else {return Date()}
        return parsedData
    }
}
