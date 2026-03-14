import SwiftUI

struct RequestListView: View {
    let category: Int

    var body: some View {
        List {
            NavigationLink(destination: RequestDetailView()) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Customer Name")
                        Text("Pending")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }

                    Spacer()

                    Circle()
                        .fill(Color.red)
                        .frame(width: 10, height: 10)
                }
            }
        }
    }
}