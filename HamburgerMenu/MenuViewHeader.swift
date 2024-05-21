//
//  MenuViewHeader.swift
//  HamburgerMenu
//
//  Created by kaushal kumar on 20/05/24.
//

import SwiftUI

struct MenuViewHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            VStack(alignment: .leading, spacing: 6) {
                Text("Gudkesh Kumar")
                    .font(.subheadline)
                Text("gkumar@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
        }
    }
}

#Preview {
    MenuViewHeader()
}
