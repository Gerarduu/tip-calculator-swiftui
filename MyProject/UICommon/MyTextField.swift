import SwiftUI

// MARK: - MyTextField

internal struct MyTextField: View {
    // MARK: Variables
    
    private let title: String
    private let placeholder: String
    private let value: Binding<Double>
    
    // MARK: Initialiser
    
    internal init(title: String, placeholder: String = "", value: Binding<Double>) {
        self.title = title
        self.placeholder = placeholder
        self.value = value
    }
    
    // MARK: Body
    
    internal var body: some View {
        Group {
            VStack {
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(placeholder, value: value, formatter: NumberFormatter())
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .lineLimit(1, reservesSpace: false)
                    .textFieldStyle(.plain)
            }
        }
    }
}
