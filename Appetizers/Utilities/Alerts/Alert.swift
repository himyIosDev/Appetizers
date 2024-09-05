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
                                              message: Text("Invalid response from server. Please Try again later or contact support"),
                                              dissmissButton: .default(Text("Ok")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server. If this persists, please contact support"),
                                              dissmissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dissmissButton: .default(Text("Ok")))
}
