import SwiftUI

struct DashboardView: View {
    @State private var selectedTab = 0

    var body: some View {
        NavigationStack {
            VStack {
                Picker("Requests", selection: $selectedTab) {
                    Text("Guided Teaching").tag(0)
                    Text("Tech Services").tag(1)
                    Text("App Creation").tag(2)
                }
                .pickerStyle(.segmented)
                .padding()

                RequestListView(category: selectedTab)
            }
            .navigationTitle("Dashboard")
        }
    }
}