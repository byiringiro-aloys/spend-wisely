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

extension Category {
    static let autoAndTransport = Category(id: 1, name: "Auto & Transport", icon: "car.fill")
    static let billsAndUtilities = Category(id: 2, name: "Bills & Utilities", icon: "doc.text.fill")
    static let entertainment = Category(id: 3, name: "Entertainment", icon: "film.fill")
    static let feesAndCharges = Category(id: 4, name: "Fees & Charges", icon: "banknote.fill")
    static let foodAndDining = Category(id: 5, name: "Food & Dining", icon: "fork.knife")
    static let home = Category(id: 6, name: "Home", icon: "house.fill")
    static let income = Category(id: 7, name: "Income", icon: "dollarsign.circle.fill")
    static let shopping = Category(id: 8, name: "Shopping", icon: "cart.fill")
    static let transfer = Category(id: 9, name: "Transfer", icon: "arrow.left.arrow.right")

    static let publicTransportation = Category(id: 101, name: "Public Transportation", icon: "bus.fill", mainCategoryId: 1)
    static let taxi = Category(id: 102, name: "Taxi", icon: "car.side.fill", mainCategoryId: 1)
    static let mobilePhone = Category(id: 201, name: "Mobile Phone", icon: "iphone", mainCategoryId: 2)
    static let moviesAndDVDs = Category(id: 301, name: "Movies & DVDs", icon: "film.fill", mainCategoryId: 3)
    static let bankFee = Category(id: 401, name: "Bank Fee", icon: "banknote.fill", mainCategoryId: 4)
    static let financeCharge = Category(id: 402, name: "Finance Charge", icon: "banknote.fill", mainCategoryId: 4)
    static let groceries = Category(id: 501, name: "Groceries", icon: "cart.fill", mainCategoryId: 5)
    static let restaurants = Category(id: 502, name: "Restaurants", icon: "fork.knife", mainCategoryId: 5)
    static let rent = Category(id: 601, name: "Rent", icon: "house.fill", mainCategoryId: 6)
    static let homeSupplies = Category(id: 602, name: "Home Supplies", icon: "lightbulb.fill", mainCategoryId: 6)
    static let paycheque = Category(id: 701, name: "Paycheque", icon: "dollarsign.circle.fill", mainCategoryId: 7)
    static let software = Category(id: 801, name: "Software", icon: "gearshape.fill", mainCategoryId: 8)
    static let creditCardPayment = Category(id: 901, name: "Credit Card Payment", icon: "creditcard.fill", mainCategoryId: 9)
}

extension Category{
    static let categories: [Category] = [
        .autoAndTransport,
        .billsAndUtilities,
        .entertainment,
        .feesAndCharges,
        .foodAndDining,
        .home,
        .income,
        .shopping,
        .transfer
    ]
    
    static let subCategories: [Category] = [
        .publicTransportation,
        .taxi,
        .mobilePhone,
        .moviesAndDVDs,
        .bankFee,
        .financeCharge,
        .groceries,
        .restaurants,
        .rent,
        .homeSupplies,
        .paycheque,
        .software,
        .creditCardPayment
    ]
    
    static let all: [Category] = categories + subCategories
}

