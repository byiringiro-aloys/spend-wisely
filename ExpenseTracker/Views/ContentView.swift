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
                    VStack(alignment: .leading, spacing: 24){
                        //MARK: Title
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
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transaction = transactionListPreviewData
        return transactionListVM
    }()
    static var previews: some View{
        ContentView()
            .environmentObject(transactionListVM)
    }
}
