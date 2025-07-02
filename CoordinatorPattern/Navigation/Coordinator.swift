//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Movlan Mustafayev on 21.06.25.
//

import Foundation
import SwiftUI

enum Pages:Hashable {
    case login
    case home
    case products
    case details
}

enum Sheet: String, Identifiable {
    case forgotPassword
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case signup
    
    var id: String {
        self.rawValue
    }
}


@Observable final class Coordinator {
    var path: NavigationPath = NavigationPath()
    var sheet: Sheet?
    var fullScreenCover: FullScreenCover?
    
    
    func push(page:Pages) {
        path.append(page)
    }
    
    func pop() {
        guard path.count > 0 else {return}
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func presentSheet(_ sheet:Sheet) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ fullScreenCover:FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    
    @ViewBuilder
    func build(page: Pages) -> some View {
        switch page {
        case .login:
            LoginView()
        case .home:
            HomeView()
        case .products:
            ProductsView()
        case .details:
            DetailsView()
        }
    }
    
    @ViewBuilder
    func build(sheet:Sheet) -> some View {
        switch sheet {
        case .forgotPassword:
            ForgotPassword()
        }
    }
    
    @ViewBuilder
    func build(cover:FullScreenCover) -> some View {
        switch cover {
        case .signup:
            SignUpView()
        }
    }
}
