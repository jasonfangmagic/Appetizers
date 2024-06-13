//
//  Alert.swift
//  Appetizers
//
//  Created by Jason Fang on 6/13/24.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertItem(title: Text("Server Error"), message: Text("The data received from the sever is invalid"), dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"), message: Text(""), dismissButton: .default(Text("Invliad Response from the sever. ")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"), message: Text(""), dismissButton: .default(Text("There was an issue with connecting to the server")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text(""), dismissButton: .default(Text("Unable to complete. Check your Internet")))
}
