//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    //
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
