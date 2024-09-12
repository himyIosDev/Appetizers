//
//  APButton.swift
//  Appetizers
//
//  Created by Hamza Mughal on 05/09/2024.
//

import SwiftUI

struct APButton: View {
    //
    let titleString : LocalizedStringKey
    
    var body: some View {
        Text(titleString)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(.accent)
            .tint(.accent)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    APButton(titleString: "Test Title")
}
