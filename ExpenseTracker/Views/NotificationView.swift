//
//  NotificationView.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/24/25.
//

import SwiftUI

struct NotificationView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Notification items
                    NotificationItem(
                        icon: "checkmark.circle.fill",
                        iconColor: .green,
                        title: "Payment Successful",
                        message: "Your rent payment of $1,500 was processed",
                        time: "2 hours ago"
                    )
                    
                    NotificationItem(
                        icon: "exclamationmark.triangle.fill",
                        iconColor: .orange,
                        title: "Budget Alert",
                        message: "You've spent 80% of your monthly food budget",
                        time: "5 hours ago"
                    )
                    
                    NotificationItem(
                        icon: "dollarsign.circle.fill",
                        iconColor: .blue,
                        title: "Salary Deposited",
                        message: "Your monthly salary of $4,500 has been deposited",
                        time: "Yesterday"
                    )
                    
                    NotificationItem(
                        icon: "bell.fill",
                        iconColor: .purple,
                        title: "Bill Reminder",
                        message: "Electric bill of $120 is due in 3 days",
                        time: "2 days ago"
                    )
                }
                .padding()
            }
            .background(Color.appBackground)
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .foregroundColor(Color.AppIcon)
                }
            }
        }
    }
}

struct NotificationItem: View {
    let icon: String
    let iconColor: Color
    let title: String
    let message: String
    let time: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            // Icon
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(iconColor)
                .frame(width: 40, height: 40)
                .background(iconColor.opacity(0.15))
                .clipShape(Circle())
            
            // Content
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(message)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                
                Text(time)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: Color.primary.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
            .preferredColorScheme(.light)
        NotificationView()
            .preferredColorScheme(.dark)
    }
}
