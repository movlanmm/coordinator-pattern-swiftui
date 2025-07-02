//
//  HomeView.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import SwiftUI

struct HomeView: View {
    @Environment(Coordinator.self) private var coordinator
    @Environment(AuthViewModel.self) private var authVM
    
    var body: some View {
        Button("Back") {
            coordinator.pop()
        }
        
        Button("Sign out") {
            authVM.logout()
        }
        
        Button("products view") {
            coordinator.push(page: .products)
        }

    }
}

#Preview {
    HomeView()
}
