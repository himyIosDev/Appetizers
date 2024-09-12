//
//  User.swift
//  Appetizers
//
//  Created by Hamza Mughal on 11/09/2024.
//

import Foundation
import SwiftUI

struct User : Codable {
    //
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
