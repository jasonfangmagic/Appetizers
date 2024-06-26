//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabview().environmentObject(order)
        }
    }
}
