//
//  MenuItemView.swift
//  HamburgerMenu
//
//  Created by kaushal kumar on 21/05/24.
//

import SwiftUI

struct MenuItemView: View {
    let menuItem: MenuItemOptionsModel
    @Binding var  selectedMenuItem: MenuItemOptionsModel?
    
    private var isSelected: Bool {
        return menuItem == selectedMenuItem
    }
    var body: some View {
        HStack {
            Image(systemName: menuItem.systemImageName)
                .imageScale(.small)
            Text(menuItem.title)
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelected ? .blue : .primary)
        .frame(height: 44)
    }
}

#Preview {
    MenuItemView(menuItem: .nature, selectedMenuItem: .constant(.nature))
}
