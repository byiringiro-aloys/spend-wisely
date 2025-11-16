//
//  TransactionRow.swift
//  ExpenseTracker
//
//  Created by ALOYS on 11/16/25.
//
import Foundation
import SwiftUI

struct TransactionRow: View {
    var transaction: Transaction
    var body: some View {
        HStack(spacing: 20){
            RoundedRectangle(cornerRadius: 20,style: .continuous)
                .fill(Color.icon.opacity(0.3))
                .frame(width:44, height: 44)
                .overlay{
                    Image(systemName: "snowflake")
                        .foregroundStyle(Color.icon)
                }
            
            VStack(alignment: .leading,spacing: 6){
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                Text(transaction.dateParsed,format: .dateTime.day().month().year())
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    
            }
            .padding([.top, .bottom],8)
            Spacer()
            Text(transaction.signedAmount,format: .currency(code: "USD"))
                .bold()
                .foregroundStyle(transaction.type == TransactionType.credit.rawValue ? Color.appText : .secondary )
        }
        .padding()
    }
}

#Preview {
    TransactionRow(transaction: transactionPreviewData)
}
