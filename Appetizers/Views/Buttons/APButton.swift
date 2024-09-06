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
        Button {
            //
            print("tapped")
            //
        } label: {
            //
            Text(titleString)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 260, height: 50)
                .foregroundStyle(.white)
                .background(.brandPrimary)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding(.bottom)
    }
}

#Preview {
    APButton(titleString: "Test Title")
}
