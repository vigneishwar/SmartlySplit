import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State var name = ""
    let students = ["abc", "cdf", "efg"]
    @State private var selectStudent = ""
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    TextField("Enter something here", text: $name) // two way binding
                    Text("Hello !!\(name)")
                    Text("Hello!!")
                }
                Button("Tap: \(tapCount)"){
                    tapCount += 1
                }
                
                Section{
                    Picker("Select the student", selection: $selectStudent){
                        ForEach(students, id:\.self){
                            Text($0)
                        }
                    }
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
