import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State var name = ""
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    TextField("Enter something here", text: $name)
                    Text("Hello !!")
                    Text("Hello!!")
                }
                Button("Tap: \(tapCount)"){
                    tapCount += 1
                }
            }
            .font(.system(size:15, design: .default))
            .navigationTitle("Smart Split")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
