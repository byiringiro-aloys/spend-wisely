//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//

import Foundation

struct Transaction: Identifiable,Decodable,Hashable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    let categoryId: Int
    var category: String
    let isPending: Bool
    let isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date{
        date.dateParse()
    }
    
    var signedAmount: Double{
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
}

enum TransactionType: String{
    case debit = "debit"
    case credit = "credit"
}
