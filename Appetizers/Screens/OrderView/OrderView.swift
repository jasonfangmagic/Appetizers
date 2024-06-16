//
//  OrderView.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.items.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                    
                   
                    
                }
                
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾Orders")
        }
        
    }
}

#Preview {
    OrderView()
}
