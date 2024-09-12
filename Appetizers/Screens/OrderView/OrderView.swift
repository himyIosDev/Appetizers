//
//  OrderView.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

struct OrderView: View {
    //
    @EnvironmentObject var order : Order
    
    var body: some View {
        //
        NavigationView {
            //
            ZStack {
                //
                VStack {
                    //
                    List {
                        //
                        ForEach(self.order.items) { orderItem in
                            //
                            AppetizerListCell(appetizerItem: orderItem)
                        }
                        .onDelete(perform: self.order.deleteItem)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        //
                        print("order placed")
                    } label: {
                        //
//                        APButton(titleString: "$\(self.order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(self.order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom)
                }
                
                if self.order.items.isEmpty {
                    //
                    EmptyState(imageName: "empty-order", message: "You have no item in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
