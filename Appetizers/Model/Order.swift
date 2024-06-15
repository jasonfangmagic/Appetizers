//
//  Order.swift
//  Appetizers
//
//  Created by Jason Fang on 6/15/24.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
}
