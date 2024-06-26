//
//  Appetizer.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request:[Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 12, name: "text", description: "this is the description for my appetizer", price: 12, imageURL: "", calories: 22, protein: 31, carbs: 23)
    
    static let sampleAppetizer1 = Appetizer(id: 13, name: "text", description: "this is the description for my appetizer", price: 12, imageURL: "", calories: 22, protein: 31, carbs: 23)
    
    static let sampleAppetizer2 = Appetizer(id: 14, name: "text", description: "this is the description for my appetizer", price: 12, imageURL: "", calories: 22, protein: 31, carbs: 23)
    
    static let orderItem = [sampleAppetizer, sampleAppetizer1, sampleAppetizer2]
}


