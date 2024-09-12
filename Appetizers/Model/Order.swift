//
//  Order.swift
//  Appetizers
//
//  Created by Hamza Mughal on 11/09/2024.
//

import SwiftUI

final class Order : ObservableObject {
    //
    @Published var items : [Appetizer] = []
    
    var totalPrice : Double {
        //
        items.reduce(0) {
            //
            $0 + $1.price
        }
    }
    
    func addItem (appetizerItem : Appetizer) {
        //
        self.items.append(appetizerItem)
    }
    
    func deleteItem(at offSets : IndexSet) {
        //
        items.remove(atOffsets: offSets)
    }
}
