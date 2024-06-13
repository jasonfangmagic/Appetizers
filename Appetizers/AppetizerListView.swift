//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers) {
                appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
        }
        
    }
    
   
}

#Preview {
    AppetizerListView()
}
