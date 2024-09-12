//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Hamza Mughal on 12/09/2024.
//

import SwiftUI

struct StandardButtonStyle : ViewModifier {
    //
    
    func body(content: Content) -> some View {
        //
        content 
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
