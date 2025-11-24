//
//  StatisticsView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/24/25.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Balance Card
                VStack(spacing: 12) {
                    Text("Current Balance")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text(transactionListVM.currentBalance, format: .currency(code: "USD"))
                        .font(.system(size: 42, weight: .bold))
                        .foregroundColor(transactionListVM.currentBalance >= 0 ? .green : .red)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.systemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: Color.primary.opacity(0.1), radius: 10, x: 0, y: 5)
                
                // Income vs Expenses
                HStack(spacing: 16) {
                    // Income Card
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: "arrow.down.circle.fill")
                                .foregroundColor(.green)
                            Text("Income")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Text(transactionListVM.totalIncome, format: .currency(code: "USD"))
                            .font(.title3)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.systemBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color.primary.opacity(0.1), radius: 8, x: 0, y: 4)
                    
                    // Expenses Card
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Image(systemName: "arrow.up.circle.fill")
                                .foregroundColor(.red)
                            Text("Expenses")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Text(transactionListVM.totalExpenses, format: .currency(code: "USD"))
                            .font(.title3)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.systemBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color.primary.opacity(0.1), radius: 8, x: 0, y: 4)
                }
                
                // Spending by Category
                VStack(alignment: .leading, spacing: 16) {
                    Text("Spending by Category")
                        .font(.headline)
                        .padding(.horizontal)
                    
                    ForEach(transactionListVM.expensesByCategory.prefix(6), id: \.category) { item in
                        CategoryRow(category: item.category, amount: item.amount, total: transactionListVM.totalExpenses)
                    }
                }
                .padding()
                .background(Color.systemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: Color.primary.opacity(0.1), radius: 10, x: 0, y: 5)
            }
            .padding()
        }
        .background(Color.appBackground)
        .navigationTitle("Statistics")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoryRow: View {
    let category: String
    let amount: Double
    let total: Double
    
    var percentage: Double {
        guard total > 0 else { return 0 }
        return (amount / total) * 100
    }
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text(category)
                    .font(.subheadline)
                Spacer()
                Text(amount, format: .currency(code: "USD"))
                    .font(.subheadline)
                    .bold()
                Text("(\(Int(percentage))%)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.AppIcon)
                        .frame(width: geometry.size.width * (percentage / 100), height: 8)
                }
            }
            .frame(height: 8)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        var vm = TransactionListViewModel()
        vm.transactions = transactionListPreviewData
        return vm
    }()
    
    static var previews: some View {
        NavigationView {
            StatisticsView()
                .environmentObject(transactionListVM)
                .preferredColorScheme(.light)
        }
        NavigationView {
            StatisticsView()
                .environmentObject(transactionListVM)
                .preferredColorScheme(.dark)
        }
    }
}
