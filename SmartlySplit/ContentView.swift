import SwiftUI

struct ContentView: View {
    @State private var totalAmount = 0.0
    @State private var numberOfPerson = ""
    @State private var numberOfShares = ""
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Total Amount")){
                    TextField("Amount", value: $totalAmount, format: .currency(code: Locale.current.currency?.identifier ?? "AUD"))
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Number of Person")){
                    TextField("Number of Person", text: $numberOfPerson)
                        .keyboardType(.decimalPad)
                }
                .navigationTitle("Smart Split")
                .navigationBarTitleDisplayMode(.automatic)
            }
        }
    }
}

#Preview {
    ContentView()
}
