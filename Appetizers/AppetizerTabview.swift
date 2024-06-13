//
//  ContentView.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.
//

import SwiftUI

struct AppetizerTabview: View {
    
//    init() {
//        UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
//    }
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabview()
}
