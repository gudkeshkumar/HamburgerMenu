//
//  MenuView.swift
//  HamburgerMenu
//
//  Created by kaushal kumar on 20/05/24.
//

import SwiftUI

struct MenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        if isShowing {
            Rectangle()
                .opacity(0.3)
                .ignoresSafeArea()
                .onTapGesture {
                    isShowing.toggle()
                }
        }
    }
}

#Preview {
    MenuView(isShowing: .constant(true))
}
