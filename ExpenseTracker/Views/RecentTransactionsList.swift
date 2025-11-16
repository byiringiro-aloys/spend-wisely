//
//  RecentTransactionsList.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//
import Foundation
import SwiftUI


struct RecentTransactionsList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack{
            HStack{
                Text("Recent Transactions")
                    .bold()
                Spacer()
                NavigationLink{
                    
                }label: {
                    HStack(spacing: 4){
                        Text("See All ")
                        Image(systemName: "chevron.forward")
                    }
                    .foregroundStyle(Color.appText)
                }
            }
            .padding()
            ForEach(Array(transactionListVM.transaction.prefix(5).enumerated()),id: \.element){ index, transaction in
                TransactionRow(transaction: transaction)
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
        .shadow(color: Color.primary.opacity(0.2),radius: 10,x:0,y:5)
    }
}

struct RecentTransactionsList_Previews: PreviewProvider {
    
    static let transactionListVModel: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transaction = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews : some View{
        RecentTransactionsList()
            .environmentObject(transactionListVModel)
    }
}
