//
//  LoginView.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(Coordinator.self) private var coordinator
    @Environment(AuthViewModel.self) private var authVM
    
    var body: some View {
        VStack {
            
            Button("Login") {
                authVM.login()
            }
            
            Button("Go to Home") {
                coordinator.push(page: .home)
            }
            
            Button("Go Sign up") {
                coordinator.presentFullScreenCover(.signup)
            }
            
            Button("Go to forgot password") {
                coordinator.presentSheet(.forgotPassword)
            }
            
        }
        .navigationTitle("Login")
    }
}

#Preview {
    NavigationStack {
        LoginView()
            .environment(Coordinator())
    }
}
