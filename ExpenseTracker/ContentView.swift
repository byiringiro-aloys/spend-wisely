//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView(){
                ScrollView{
                    VStack(alignment: .leading, spacing: 24){
                        //MARK: Title
                        Text("Overview")
                            .font(.title2)
                            .bold()
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

#Preview{
    ContentView()
}
