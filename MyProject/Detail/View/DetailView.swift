import SwiftUI

// MARK: - HomeView

struct DetailView: View {
    // MARK: Variables
    
    @ObservedObject private var viewModel: DetailViewModel
    
    // MARK: Initialiser
    
    init(viewModel: DetailViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: Views
    
    var body: some View {
        VStack {
            
        }
    }
}
