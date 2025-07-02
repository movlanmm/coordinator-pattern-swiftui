//
//  SignUpView.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import SwiftUI

struct SignUpView: View {
    @Environment(Coordinator.self) private var coordinator
    
    var body: some View {
        Button("Back") {
            coordinator.dismissFullScreenCover()
        }
    }
}

#Preview {
    SignUpView()
}
