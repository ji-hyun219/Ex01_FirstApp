//
//  ContentView2.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/04/07.
//

import SwiftUI

// MVC (Model, View, Controller) : 모델(데이타), 뷰(UI), 컨트롤(제어코드)로 화면을 구현하는 소프트웨어 UI 개발모델
// MVVM (Model, View, ViewModel) : 모델(데이타), 뷰(UI), 뷰모델(의존성이 없는 중간참조영역)


// Model
struct User {
    var name: String
    var age: Int
}

// ViewModel
class ContentViewModel: ObservableObject {
    @Published var hong: User = User(name: "hong", age: 27)
}


// View
struct ContentView2: View {
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text("name \(self.contentViewModel.hong.name)")
            Text("age \(self.contentViewModel.hong.age)")
            Button {
                self.contentViewModel.hong.name = "jihyun"
                self.contentViewModel.hong.age = 26
            } label: {
                Text("Change Info")
            }

        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
