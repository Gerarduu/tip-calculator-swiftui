import Foundation
import SwiftUI

// MARK: - HomeViewModel

internal class HomeViewModel: ObservableObject {
    // MARK: Variables
    
    internal var total = 0.00 {
        didSet { calculateSplitTotal() }
    }
    
    internal var tipPercent = 0.00 {
        didSet { calculateSplitTotal() }
    }
    
    internal var split = 1 {
        didSet { calculateSplitTotal() }
    }
    
    @Published
    internal var splitTotal = 0.00
    
    // MARK: Methods
    
    internal func increaseSplit() {
        split += 1
    }
    
    internal func decreaseSplit() {
        split -= 1
    }
    
    internal func reset() {
        total = 0.00
        tipPercent = 0.00
        split = 1
    }
    
    // MARK: Private Methods
    
    private func calculateSplitTotal() {
        let totalPlusTip = total + ((self.tipPercent * 0.01) * total)
        splitTotal = totalPlusTip / Double(self.split)
    }
}
