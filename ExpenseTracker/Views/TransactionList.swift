//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/17/25.
//
import SwiftUI


struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack{
            List{
                ForEach(Array(transactionListVM.groupTransactionsByMonth()),id: \.key){ month, transactions in
                    Section {
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        HStack {
                            Text(month)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Spacer()
                            let monthTotal = transactions.reduce(0) { $0 + $1.signedAmount }
                            Text(monthTotal, format: .currency(code: "USD"))
                                .font(.subheadline)
                                .foregroundColor(monthTotal >= 0 ? .green : .red)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.plain)
            
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TransactionList_Previews: PreviewProvider{
    static let transactionListVM: TransactionListViewModel = {
        var transactionlistVModel = TransactionListViewModel()
        transactionlistVModel.transactions=transactionListPreviewData
        return transactionlistVModel
    }()
    
    static var previews: some View{
        Group{
            NavigationView{
                TransactionList()
                    .preferredColorScheme(.light)
            }
            NavigationView{
                TransactionList()
                    .preferredColorScheme(.dark)
            }
        }
        .environmentObject(transactionListVM)
        
    }
}
