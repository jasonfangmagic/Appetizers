//
//  Appetizer.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse{
    let request:[Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 12, name: "text", description: "this is the description for my appetizer", price: 12, imageURL: "", calories: 22, protein: 31, carbs: 23)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}


