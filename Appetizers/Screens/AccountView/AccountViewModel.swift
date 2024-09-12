//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Hamza Mughal on 11/09/2024.
//

import Foundation
import SwiftUI

final class AccountViewModel : ObservableObject {
    //
    @AppStorage("user") private var userData : Data?
    
    @Published var user = User()
    @Published var alertItem : AlertItem?
    
    // ************************************************************
    
    var isValidForm : Bool {
        //
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            //
            self.alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            //
            self.alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    // ************************************************************
    
    func saveChangesBtnPressed() {
        //
        guard isValidForm else { return }
        
        do {
            //
            let data = try JSONEncoder().encode(user)
            self.userData = data
            self.alertItem = AlertContext.userSaveSuccess
        }
        catch {
            //
            self.alertItem = AlertContext.invalidUserData
        }
    }
    
    // ************************************************************
    
    func retriveUser() {
        //
        guard let userData = userData else { return }
        
        do {
            //
            self.user = try JSONDecoder().decode(User.self, from: userData)
        }
        catch {
            self.alertItem = AlertContext.invalidUserData
        }
    }
}
