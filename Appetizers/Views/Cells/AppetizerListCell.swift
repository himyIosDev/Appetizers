//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    //
    let appetizerItem: Appetizer
    
    var body: some View {
        //
        HStack {
            //
            AppetizerRemoteImage(urlString: appetizerItem.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            
            VStack(alignment: .leading, spacing: 5) {
                //
                Text(appetizerItem.name)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Text("$\(appetizerItem.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizerItem: MockData.sampleAppetizer)
}
