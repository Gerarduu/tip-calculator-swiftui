import SwiftUI

// MARK: - Protocol Coordinator

internal protocol Coordinator {
    associatedtype V: View
    
    var view: V { get set }
}
