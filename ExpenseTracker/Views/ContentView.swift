//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @EnvironmentObject var transactionListVM: TransactionListViewModel
            NavigationView(){
                ScrollView{
                    VStack(alignment: .center, spacing: 24){
                        Text("Overview")
                            .font(.title2)
                            .bold()
                        RecentTransactionsList()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    
                }
                .background(Color.appBackground)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "bell.badge")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(Color.AppIcon,.primary)
                    }
                }
            }
            .navigationViewStyle(.automatic)
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
