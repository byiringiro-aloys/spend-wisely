//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//

import Foundation
//import SwiftUI

// Comprehensive dummy data for testing
var transactionListPreviewData: [Transaction] = [
    // November 2025 - Current Month
    Transaction(id: 1, date: "11/22/2025", institution: "Chase Bank", account: "Checking", merchant: "Whole Foods", amount: 127.45, type: "debit", categoryId: 501, category: "Groceries", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 2, date: "11/21/2025", institution: "Chase Bank", account: "Checking", merchant: "Uber", amount: 18.50, type: "debit", categoryId: 102, category: "Taxi", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 3, date: "11/20/2025", institution: "Chase Bank", account: "Checking", merchant: "Netflix", amount: 15.99, type: "debit", categoryId: 301, category: "Movies & DVDs", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 4, date: "11/19/2025", institution: "Chase Bank", account: "Checking", merchant: "Starbucks", amount: 5.75, type: "debit", categoryId: 502, category: "Restaurants", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 5, date: "11/18/2025", institution: "Chase Bank", account: "Checking", merchant: "Shell Gas Station", amount: 52.30, type: "debit", categoryId: 1, category: "Auto & Transport", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 6, date: "11/17/2025", institution: "Chase Bank", account: "Checking", merchant: "Amazon", amount: 84.99, type: "debit", categoryId: 8, category: "Shopping", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 7, date: "11/15/2025", institution: "Direct Deposit", account: "Checking", merchant: "Monthly Salary", amount: 4500.00, type: "credit", categoryId: 701, category: "Paycheque", isPending: false, isTransfer: false, isExpense: false, isEdited: false),
    Transaction(id: 8, date: "11/14/2025", institution: "Chase Bank", account: "Checking", merchant: "Chipotle", amount: 12.85, type: "debit", categoryId: 502, category: "Restaurants", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 9, date: "11/12/2025", institution: "Chase Bank", account: "Checking", merchant: "Target", amount: 156.32, type: "debit", categoryId: 8, category: "Shopping", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 10, date: "11/10/2025", institution: "Chase Bank", account: "Checking", merchant: "AT&T", amount: 75.00, type: "debit", categoryId: 201, category: "Mobile Phone", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 11, date: "11/08/2025", institution: "Chase Bank", account: "Checking", merchant: "Metro Transit", amount: 2.50, type: "debit", categoryId: 101, category: "Public Transportation", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 12, date: "11/05/2025", institution: "Chase Bank", account: "Checking", merchant: "Spotify", amount: 10.99, type: "debit", categoryId: 3, category: "Entertainment", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 13, date: "11/01/2025", institution: "Chase Bank", account: "Checking", merchant: "Rent Payment", amount: 1500.00, type: "debit", categoryId: 601, category: "Rent", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    
    // October 2025
    Transaction(id: 14, date: "10/28/2025", institution: "Chase Bank", account: "Checking", merchant: "Trader Joe's", amount: 98.76, type: "debit", categoryId: 501, category: "Groceries", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 15, date: "10/25/2025", institution: "Chase Bank", account: "Checking", merchant: "Apple Store", amount: 49.99, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 16, date: "10/22/2025", institution: "Chase Bank", account: "Checking", merchant: "Electric Company", amount: 120.45, type: "debit", categoryId: 2, category: "Bills & Utilities", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 17, date: "10/20/2025", institution: "Chase Bank", account: "Checking", merchant: "Olive Garden", amount: 45.67, type: "debit", categoryId: 502, category: "Restaurants", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 18, date: "10/18/2025", institution: "Chase Bank", account: "Checking", merchant: "CVS Pharmacy", amount: 32.15, type: "debit", categoryId: 8, category: "Shopping", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 19, date: "10/15/2025", institution: "Direct Deposit", account: "Checking", merchant: "Monthly Salary", amount: 4500.00, type: "credit", categoryId: 701, category: "Paycheque", isPending: false, isTransfer: false, isExpense: false, isEdited: false),
    Transaction(id: 20, date: "10/12/2025", institution: "Chase Bank", account: "Checking", merchant: "Shell Gas Station", amount: 48.90, type: "debit", categoryId: 1, category: "Auto & Transport", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 21, date: "10/10/2025", institution: "Chase Bank", account: "Checking", merchant: "IKEA", amount: 234.50, type: "debit", categoryId: 602, category: "Home Supplies", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 22, date: "10/08/2025", institution: "Chase Bank", account: "Checking", merchant: "Bank Fee", amount: 12.00, type: "debit", categoryId: 401, category: "Bank Fee", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 23, date: "10/05/2025", institution: "Chase Bank", account: "Checking", merchant: "Costco", amount: 187.23, type: "debit", categoryId: 501, category: "Groceries", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 24, date: "10/01/2025", institution: "Chase Bank", account: "Checking", merchant: "Rent Payment", amount: 1500.00, type: "debit", categoryId: 601, category: "Rent", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    
    // September 2025
    Transaction(id: 25, date: "09/28/2025", institution: "Chase Bank", account: "Checking", merchant: "Safeway", amount: 112.34, type: "debit", categoryId: 501, category: "Groceries", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 26, date: "09/25/2025", institution: "Chase Bank", account: "Checking", merchant: "AMC Theaters", amount: 28.50, type: "debit", categoryId: 3, category: "Entertainment", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 27, date: "09/22/2025", institution: "Chase Bank", account: "Checking", merchant: "Best Buy", amount: 299.99, type: "debit", categoryId: 8, category: "Shopping", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 28, date: "09/20/2025", institution: "Chase Bank", account: "Checking", merchant: "Water Bill", amount: 45.80, type: "debit", categoryId: 2, category: "Bills & Utilities", isPending: false, isTransfer: false, isExpense: true, isEdited: false),
    Transaction(id: 29, date: "09/15/2025", institution: "Direct Deposit", account: "Checking", merchant: "Monthly Salary", amount: 4500.00, type: "credit", categoryId: 701, category: "Paycheque", isPending: false, isTransfer: false, isExpense: false, isEdited: false),
    Transaction(id: 30, date: "09/10/2025", institution: "Chase Bank", account: "Checking", merchant: "Credit Card Payment", amount: 850.00, type: "debit", categoryId: 901, category: "Credit Card Payment", isPending: false, isTransfer: true, isExpense: false, isEdited: false)
]

// Single transaction for preview
var transactionPreviewData = transactionListPreviewData[0]
