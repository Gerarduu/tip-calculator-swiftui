import SwiftUI

// MARK: - DetailCoordinator

internal struct DetailCoordinator: Coordinator {
    // MARK: Variables
    
    internal var view: DetailView?
    
    // MARK: Initialiser
    
    internal init() {
        let viewModel = DetailViewModel()
        let view = DetailView(viewModel: viewModel)
        
        self.view = view
        
        viewModel.coordinator = self
    }
}
