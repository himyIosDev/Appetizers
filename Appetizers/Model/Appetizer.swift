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
}
