//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//

import Foundation
//import SwiftUI

var transactionPreviewData = Transaction(id: 1, date:"01/24/2025e", institution: "Aloys", account: "Byiringiro Aloys", merchant: "Apple", amount: 99.99, type: "debit", categoryId: 400, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)


var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
