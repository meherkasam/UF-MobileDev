import PlaygroundSupport
import SwiftUI

struct W2View: View {
    @State private var name = ""
    @State private var ssn = ""
    @State private var income = ""
    
    var body: some View {
        VStack(spacing: 16) {
            Text("W-2 Form").font(.headline).padding(.bottom, 8)
            TextField("Name", text: $name).textFieldStyle(.roundedBorder)
            TextField("SSN", text: $ssn).textFieldStyle(.roundedBorder)
            TextField("Income", text: $income).textFieldStyle(.roundedBorder)
            Button("Submit", action: submitForm)
        }
        .padding(.vertical, 24).padding(.horizontal, 16)
        Spacer()
    }
    
    func submitForm() {
        // Form submit code
    }
}

PlaygroundPage.current.setLiveView(W2View().frame(width: 320, height: 568))
