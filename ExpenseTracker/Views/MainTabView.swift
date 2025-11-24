//
//  MainTabView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/24/25.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Home",systemImage: "house.fill")
                        .foregroundStyle(Color.AppIcon)
                }
            TransactionList()
                            .tabItem {
                                Label("Transactions", systemImage: "list.star")
                            }
            NotificationView()
                .tabItem{
                    Label("Notifications",systemImage: "bell.badge.fill")
                        .foregroundStyle(Color.AppIcon)
                }
        }
        
    }
}

struct MainTabView_previews: PreviewProvider{
    static let transactionListVM: TransactionListViewModel = {
        var transactionListVM = TransactionListViewModel()
        return transactionListVM
    }()
    
    static var previews: some View{
        Group{
            MainTabView()
                .colorScheme(.light)
        }
        .environmentObject(transactionListVM)
    }
    
}
