//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Jason Fang on 6/14/24.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 40, height: 40)
                .foregroundColor(Color.brandPrimary)
        }
    }
}

#Preview {
    XDismissButton()
}
