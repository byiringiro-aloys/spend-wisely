//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/15/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    @State private var showNotifications = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 24) {
                    // Header
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    // Balance Summary Card
                    VStack(spacing: 12) {
                        Text("Total Balance")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text(transactionListVM.currentBalance, format: .currency(code: "USD"))
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(transactionListVM.currentBalance >= 0 ? .green : .red)
                        
                        HStack(spacing: 32) {
                            VStack {
                                Text("Income")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                Text(transactionListVM.totalIncome, format: .currency(code: "USD"))
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(.green)
                            }
                            VStack {
                                Text("Expenses")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                Text(transactionListVM.totalExpenses, format: .currency(code: "USD"))
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(.red)
                            }
                        }
                        .padding(.top, 8)
                        
                        // Statistics Button
                        NavigationLink {
                            StatisticsView()
                        } label: {
                            HStack {
                                Image(systemName: "chart.bar.fill")
                                Text("View Statistics")
                            }
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.AppIcon)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                        .padding(.top, 8)
                    }
                    .padding()
                    .background(Color.systemBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(color: Color.primary.opacity(0.15), radius: 12, x: 0, y: 6)
                    
                    // Recent Transactions
                    RecentTransactionsList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.appBackground)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showNotifications = true
                    } label: {
                        Image(systemName: "bell.badge")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.AppIcon, .primary)
                    }
                }
            }
        }
//        .navigationViewStyle(.automatic)
        .sheet(isPresented: $showNotifications) {
            NotificationView()
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static let transactionListVModel : TransactionListViewModel = {
        var transactionListVModel = TransactionListViewModel()
        transactionListVModel.transactions = transactionListPreviewData
        return transactionListVModel
        
    }()
    static var previews: some View{
        ContentView()
            .environmentObject(transactionListVModel)
            .colorScheme(.light)
        ContentView()
            .environmentObject(transactionListVModel)
            .colorScheme(.dark)
    }
}
