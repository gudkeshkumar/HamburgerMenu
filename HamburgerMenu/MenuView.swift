//
//  MenuView.swift
//  HamburgerMenu
//
//  Created by kaushal kumar on 20/05/24.
//

import SwiftUI

struct MenuView: View {
    @Binding var isShowing: Bool
    @State private var selectedMenuItem: MenuItemOptionsModel?
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        MenuViewHeader()
                        VStack {
                            ForEach(MenuItemOptionsModel.allCases) { menuItem in
                                Button(action: {
                                    selectedMenuItem = menuItem
                                }, label: {
                                    MenuItemView(menuItem: menuItem, selectedMenuItem: $selectedMenuItem)
                                })
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    MenuView(isShowing: .constant(true))
}
