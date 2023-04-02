

import SwiftUI

struct ContentView: View {
    @State var sharedData: String = "init value"
    
    var body: some View {
        Text("Hello Jihyun!").padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
