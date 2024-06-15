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
    //Mark: - NetWorkAlert
    static let invalidData      = AlertItem(title: Text("Server Error"), message: Text("The data received from the sever is invalid"), dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"), message: Text("Invliad Response from the sever."), dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"), message: Text("There was an issue with connecting to the server"), dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete. Check your Internet"), dismissButton: .default(Text("OK")))
    
    //Mark: - Account Alert
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please fill the form"), dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Unable to complete. Check your Email"), dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile info was saved"), dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error"), dismissButton: .default(Text("OK")))
}
