//
//  AuthViewModel.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import Foundation
import Observation


@Observable final class AuthViewModel {
    
    var currentUser: Bool = false
    
    
    func login() {
        currentUser.toggle()
    }
    
    func logout() {
        currentUser.toggle()
    }
}
