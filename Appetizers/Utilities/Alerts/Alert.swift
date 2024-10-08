//
//  Alert.swift
//  Appetizers
//
//  Created by Hamza Mughal on 04/09/2024.
//

import SwiftUI

struct AlertItem : Identifiable {
    //
    let id = UUID()
    let title : Text
    let message : Text
    let dissmissButton : Alert.Button
}

struct AlertContext {
    //
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid, Please contact support."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from server. Please Try again later or contact support."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please ensure all fields in the form have been filled out."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please ensure your email is correct."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                              message: Text("Your profile info was successfully saved."),
                                              dissmissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                              message: Text("There was an error saving or retriving your profile."),
                                              dissmissButton: .default(Text("Ok")))
}
