//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

struct AppetizerListView: View {
    //
    @StateObject private var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer : Appetizer?
    
    var body: some View {
        //
        ZStack {
            //
            NavigationView {
                //
                List(viewModel.appetizerArr) { appetizerItem in
                    //
                    AppetizerListCell(appetizerItem: appetizerItem)
                        .onTapGesture {
                            //
                            selectedAppetizer = appetizerItem
                            self.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear {
                //
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            //
            if isShowingDetail {
                //
                AppetizerDetailView(appetizerDetailObj: selectedAppetizer!,
                                    isShowingDetail: $isShowingDetail)
            }
            
            //
            if viewModel.isLoading {
                //
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItemm in
            //
            Alert(title: alertItemm.title,
                  message: alertItemm.message,
                  dismissButton: alertItemm.dissmissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
