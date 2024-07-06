//
//  ListRowView.swift
//  TodoList
//
//  Created by Manan Bhatia on 31/03/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 6)
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "This is the First Item!", isCompleted: false))
}
