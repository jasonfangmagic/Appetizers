//
//  User.swift
//  Appetizers
//
//  Created by Jason Fang on 6/15/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
