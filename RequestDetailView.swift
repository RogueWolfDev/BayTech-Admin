import SwiftUI

struct RequestDetailView: View {
    @State private var message = ""
    @State private var internalNotes = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Request Details")
                    .font(.title2)
                    .bold()

                Button("Open in Maps") {
                    // Maps deep link
                }

                Divider()

                Text("Chat")
                    .font(.headline)

                VStack {
                    Text("Customer: Hello, I need help")
                    Text("Admin: Got it, reviewing")
                }

                HStack {
                    TextField("Message...", text: $message)
                    Button("Send") {}
                }

                Divider()

                Text("Internal Notes")
                    .font(.headline)

                TextEditor(text: $internalNotes)
                    .frame(height: 100)

                Divider()

                HStack {
                    Button("Reviewing") {}
                    Button("Contacted") {}
                    Button("Completed") {}
                }
            }
            .padding()
        }
        .navigationTitle("Request")
    }
}