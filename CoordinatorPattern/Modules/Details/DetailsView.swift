//
//  DetailsView.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import SwiftUI

struct DetailsView: View {
    @Environment(Coordinator.self) private var coordinator
    @Environment(AuthViewModel.self) private var authVM
    
    var body: some View {
        Button("Back") {
            coordinator.pop()
        }
        
        Button("Sign out") {
            authVM.logout()
            coordinator.popToRoot()
        }
        
        Button("Pop to root") {
            coordinator.popToRoot()
        }
        

    }
}

#Preview {
    DetailsView()
}
