//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

struct AppetizerTabView: View {
    //
    @EnvironmentObject var order : Order
    
    var body: some View {
        //
        TabView {
            //
            AppetizerListView()
            
            // two different ways for tabItem
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
            
                .tabItem { Label("Account", systemImage: "person") }
            
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
