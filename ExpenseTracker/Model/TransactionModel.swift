//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//

import Foundation
import SwiftUI

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
    
    var month: String{
        dateParsed.formatted(.dateTime.year().month(.wide))
    }
    
    var icon: String{
        if let category = Category.all.first(where: {$0.id == categoryId}){
            return category.icon
        }else{
            return "gear"
        }
    }
}

enum TransactionType: String{
    case debit = "debit"
    case credit = "credit"
}

struct Category{
    let id: Int
    let name: String
    let icon: String
    var mainCategoryId: Int?
}
