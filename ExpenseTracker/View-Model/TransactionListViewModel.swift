//
//  TransactionListViewModel.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//

import Foundation
import Combine


final class TransactionListViewModel: ObservableObject{
    @Published var transactions: [Transaction] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        getTransactions()
    }
    
    func getTransactions(){
        // Load dummy data instead of fetching from API
        // When ready to connect to real API, uncomment the code below and remove this line
        transactions = transactionListPreviewData
        
        /* Commented out API call - will be used when real API is ready
        guard let url = URL(string: "https://designcode.io/data/transactions.json") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap{(data,response)->Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
                    dump(response)
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [Transaction].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion{
                case .failure(let error):
                    print("Error fetching transactions",error.localizedDescription)
                case .finished:
                    print("finished fetching transactions.")
                }
            } receiveValue: { [weak self] result in
                self?.transactions = result
            }
            .store(in: &cancellables)
        */
    }
    
    func groupTransactionsByMonth() -> TransactionGroup {
        guard !transactions.isEmpty else {return [:]}
        
        let groupedTransactions = TransactionGroup(grouping: transactions){ $0.month }
        
        return groupedTransactions
        
    }
    
    // MARK: - Financial Statistics
    
    var totalIncome: Double {
        transactions
            .filter { $0.type == TransactionType.credit.rawValue }
            .reduce(0) { $0 + $1.amount }
    }
    
    var totalExpenses: Double {
        transactions
            .filter { $0.type == TransactionType.debit.rawValue }
            .reduce(0) { $0 + $1.amount }
    }
    
    var currentBalance: Double {
        totalIncome - totalExpenses
    }
    
    var expensesByCategory: [(category: String, amount: Double)] {
        let expenseTransactions = transactions.filter { $0.type == TransactionType.debit.rawValue }
        let grouped = Dictionary(grouping: expenseTransactions) { $0.category }
        return grouped.map { (category: $0.key, amount: $0.value.reduce(0) { $0 + $1.amount }) }
            .sorted { $0.amount > $1.amount }
    }
}

