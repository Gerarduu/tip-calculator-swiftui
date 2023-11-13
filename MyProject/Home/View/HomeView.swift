import SwiftUI

// MARK: - HomeView

internal struct HomeView: View {
    // MARK: Constants
    
    private enum Constants {
        static let title = "Hello World"
        static let totalTextFieldTitle = "Bill total"
        static let tipTextFieldTitle = "Tip %"
        static let totalTextFieldPlaceholder = "0.00"
        static let tipTextFieldPlaceholder = "0.00"
    }
    
    // MARK: Observables
    
    @ObservedObject
    private var viewModel: HomeViewModel
    
    // MARK: Initialiser
    
    internal init(viewModel: HomeViewModel = HomeViewModel()) {
        self.viewModel = viewModel
    }
    
    // MARK: Body
    
    internal var body: some View {
        VStack(spacing: 20) {
            MyTextField(
                title: Constants.totalTextFieldTitle,
                placeholder: Constants.totalTextFieldPlaceholder,
                value: $viewModel.total
            )
            .keyboardType(.numberPad)
            MyTextField(
                title: Constants.tipTextFieldTitle,
                placeholder: Constants.tipTextFieldPlaceholder,
                value: $viewModel.tipPercent
            )
            .keyboardType(.numberPad)
            SplitCalculatorView(
                split: viewModel.split,
                splitTotal: viewModel.splitTotal,
                plusButtonAction: { viewModel.increaseSplit() },
                minusButtonAction: { viewModel.decreaseSplit() }
            )
        }
        .padding()
    }
}
