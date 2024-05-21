//
//  ContentView.swift
//  HamburgerMenu
//
//  Created by kaushal kumar on 20/05/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .navigationTitle("MyHome")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    HomeView()
}
