//
//  XDismissBtn.swift
//  Appetizers
//
//  Created by Hamza Mughal on 05/09/2024.
//

import SwiftUI

struct XDismissBtn: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    XDismissBtn()
}
