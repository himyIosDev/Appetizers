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
    
    var body: some View {
        //
        ZStack {
            //
            NavigationView {
                //
                List(viewModel.appetizerArr) { appetizerItem in
                    //
                    AppetizerListCell(appetizerItem: appetizerItem)
                    //
//                        .listRowSeparator(.hidden)
//                        .listRowSeparatorTint(.brandPrimary)
                    
                        .onTapGesture {
                            //
                            viewModel.selectedAppetizer = appetizerItem
                            viewModel.isShowingDetail = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                //
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            //
            if viewModel.isShowingDetail {
                //
                AppetizerDetailView(appetizerDetailObj: viewModel.selectedAppetizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
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
