import Foundation
import SwiftUI

// MARK: - HomeCoordinator

internal struct HomeCoordinator: Coordinator {
    // MARK: Variables
    
    internal var view: HomeView
    
    // MARK: Initialiser
    
    internal init() {
        let view = HomeView()
        
        self.view = view
    }
}
