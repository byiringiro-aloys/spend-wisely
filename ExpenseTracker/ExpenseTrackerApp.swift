//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/15/25.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
