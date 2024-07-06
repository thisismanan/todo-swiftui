//
//  NoItemsView.swift
//  TodoList
//
//  Created by Manan Bhatia on 02/04/24.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animation: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                Text("Hi")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("I think you are productive person add more todos, to stay on top of your routine")
                NavigationLink(destination: AddView()) {
                    Text("Add something 🥳")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .onAppear(perform: addAnimation)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeInOut){
                animation.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle("Title")
    }
}
   
