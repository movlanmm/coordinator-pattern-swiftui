//
//  ContentView.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var coordinator: Coordinator = .init()
    @State private var authVM: AuthViewModel = .init()

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: authVM.currentUser ? .home :  .login)
                .navigationDestination(for: Pages.self) { page in
                    coordinator.build(page: page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { cover in
                    coordinator.build(cover: cover)
                }
        }
        .environment(coordinator)
        .environment(authVM)
    }
}

#Preview {
    ContentView()
}
