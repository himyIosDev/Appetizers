//
//  EmptyState.swift
//  Appetizers
//
//  Created by Hamza Mughal on 11/09/2024.
//

import SwiftUI

struct EmptyState: View {
    //
    let imageName : String
    let message : String
    
    var body: some View {
        //
        ZStack {
            //
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                //
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .italic()
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is out test message\ni am making it long by my self to test")
}
