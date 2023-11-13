import SwiftUI

// MARK: - SplitCalculatorView

internal struct SplitCalculatorView: View {
    // MARK: Constants
    
    private enum Constants {
        static let splitTitle = "Split"
        static let plus = "+"
        static let minus = "-"
        static let splitTotalTitle = "Split total"
    }
    
    // MARK: Variables
    
    private var split: Int
    private var splitTotal: Double
    private let plusButtonAction: () -> Void
    private let minusButtonAction: () -> Void
    
    // MARK: Initialiser
    
    internal init(
        split: Int,
        splitTotal: Double,
        plusButtonAction: @escaping () -> Void,
        minusButtonAction: @escaping () -> Void
    ) {
        self.split = split
        self.splitTotal = splitTotal
        self.plusButtonAction = plusButtonAction
        self.minusButtonAction = minusButtonAction
    }
    
    // MARK: Body
    
    internal var splitStackView: some View {
        VStack {
            Text(Constants.splitTitle)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 15) {
                Button(action: { plusButtonAction() }) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .opacity(0.3)
                        Text(Constants.plus)
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.bottom, 3)
                    }
                }
                .disabled(split == 50)
                Text("\(split)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                Button(action: { minusButtonAction() }) {
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .opacity(0.3)
                        Text(Constants.minus)
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.bottom, 3)
                    }
                }
                .disabled(split == 1)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    internal var splitTotalStackView: some View {
        VStack(spacing: 15) {
            Text(Constants.splitTotalTitle)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
            Text("\(splitTotal, specifier: "%.2f")")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    internal var body: some View {
        Group {
            HStack {
                splitStackView
                splitTotalStackView
            }
            .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
        }
        .background(.pink)
        .cornerRadius(15)
    }
}
