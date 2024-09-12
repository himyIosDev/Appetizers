//
//  Appetizer.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

struct Appetizer : Decodable, Identifiable {
    //
    let id          : Int
    let name        : String
    let description : String
    let price       : Double
    let imageURL    : String
    let calories    : Int
    let protein     : Int
    let carbs       : Int
}

struct AppetizerResponse : Decodable {
    //
    let request : [Appetizer]
}

struct MockData {
    //
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizer",
                                           description: "This is a description for my appetizer meal, its yammy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 56,
                                           carbs: 95)
    
    static let appetizerArr = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    
    
    
    static let orderItemOne = Appetizer(id: 001,
                                           name: "Test Appetizer 01",
                                           description: "This is a description for my appetizer meal, its yammy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 56,
                                           carbs: 95)
    
    static let orderItemTwo = Appetizer(id: 002,
                                           name: "Test Appetizer 02",
                                           description: "This is a description for my appetizer meal, its yammy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 56,
                                           carbs: 95)
    
    static let orderItemThree = Appetizer(id: 003,
                                           name: "Test Appetizer 03",
                                           description: "This is a description for my appetizer meal, its yammy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 56,
                                           carbs: 95)
    
    static let ordersArr = [orderItemOne, orderItemTwo, orderItemThree]
}
