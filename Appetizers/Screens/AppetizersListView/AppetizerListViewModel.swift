//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Hamza Mughal on 04/09/2024.
//

import SwiftUI

final class AppetizerListViewModel : ObservableObject {
    //
    @Published var appetizerArr : [Appetizer] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    
    func getAppetizers() {
        //
        self.isLoading = true
        
        //
        NetworkManager.shared.getAppetizer { result in
            //
            DispatchQueue.main.async {
                //
                self.isLoading = false
                
                switch result {
                    //
                case .success(let appetizers):
                    self.appetizerArr = appetizers
                    
                    
                    
                case .failure(let error):
                    
                    switch error {
                    //
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
