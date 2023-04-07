

import SwiftUI

struct ContentViewMyTimer: View {
  @ObservedObject var myTimer = MyTimer()
    
    var body: some View {
        Text("Timer: \(myTimer.value)").font(.largeTitle)
    }
}

struct ContentViewMyTimer_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewMyTimer()
    }
}
