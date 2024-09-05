//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Hamza Mughal on 05/09/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    //
    let appetizerDetailObj : Appetizer
    @Binding var isShowingDetail : Bool
    
    var body: some View {
        //
        VStack {
            AppetizerRemoteImage(urlString: appetizerDetailObj.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                //
                Text(appetizerDetailObj.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(appetizerDetailObj.description)
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .padding()
                
                HStack(spacing: 40) {
                    //
                    VStack(spacing: 5) {
                        //
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizerDetailObj.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        //
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizerDetailObj.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        //
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizerDetailObj.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            
            Spacer()
            
            Button {
                //
                print("tapped")
                //
            } label: {
                //
                Text("$\(appetizerDetailObj.price, specifier: "%.2f") - Add To Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundStyle(.white)
                    .background(.brandPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.bottom)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            //
            print("Dismiss")
            isShowingDetail = false
            
        } label: {
            //
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
            
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizerDetailObj: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
