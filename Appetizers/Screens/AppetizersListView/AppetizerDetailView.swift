//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Hamza Mughal on 05/09/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    //
    @EnvironmentObject var order : Order
    
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
                APTitle(title: appetizerDetailObj.name)
                APDescription(descp: appetizerDetailObj.description)
                
                HStack(spacing: 40) {
                    //
                    NutritionInfo(titleStr: "Calories", value: appetizerDetailObj.calories)
                    NutritionInfo(titleStr: "Carbs", value: appetizerDetailObj.carbs)
                    NutritionInfo(titleStr: "Protein", value: appetizerDetailObj.protein)
                }
            }
            
            Spacer()
            
            Button {
                //
                order.addItem(appetizerItem: self.appetizerDetailObj)
                self.isShowingDetail = false
            } label: {
                //
//                APButton(titleString:"$\(self.appetizerDetailObj.price, specifier: "%.2f") - Add To Order")
                Text("$\(self.appetizerDetailObj.price, specifier: "%.2f") - Add To Order")
            }
//            .buttonStyle(.bordered)
//            .tint(.brandPrimary)
//            .controlSize(.large)
            .modifier(StandardButtonStyle())
            .padding(.bottom)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            //
            print("Dismiss")
            self.isShowingDetail = false
            
        } label: {
            //
            XDismissBtn()
            
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizerDetailObj: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

// ************************************************************

struct APTitle : View {
    //
    let title : String
    var body: some View {
        //
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
    }
}

// ************************************************************

struct APDescription : View {
    //
    let descp : String
    var body: some View {
        //
        Text(descp)
            .multilineTextAlignment(.center)
            .font(.subheadline)
            .padding()
    }
}

// ************************************************************

struct NutritionInfo : View {
    //
    let titleStr : String
    let value : Int
    
    var body: some View {
        //
        VStack(spacing: 5) {
            //
            Text(titleStr)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
