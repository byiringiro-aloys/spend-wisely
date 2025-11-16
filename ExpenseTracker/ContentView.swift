//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView(){
                ScrollView{
                    
                }
                .background(Color.appBackground)
            }
            .navigationViewStyle(.automatic)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
