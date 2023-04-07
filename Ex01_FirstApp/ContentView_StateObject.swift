//
//  ContentView_StateObject.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/04/07.
//


// observableObject : 뷰의 라이프 사이클에 의존합니다
// -> 문제점 : 뷰가 소멸할 때 값이 초기화된다

// @StateObject 는 ObservableObject 를 인스턴스화를 하고 observable object 내에 @published 속성으로 선언된 프로퍼티의 값이 변할 때 뷰를 업데이트 합니다
// 특징 : 뷰의 라이프 사이클에 의존하지 않습니다. 뷰가 소멸할 때 값을 유지할 수 있습니다.
// 버전 : SwiftUI 2(iOS14에서 추가된 기능)부터 사용가능합니다

import SwiftUI
import Foundation

class Counter: ObservableObject {
    @Published var count: Int = 0
    
    init() {
    
    }
    
    func add() {
        self.count += 1
    }
}

struct CounterView: View {
//    @ObservedObject var counter: Counter // 뷰가 새로 생성되면서, 가지고 있던 값이 초기화됨
    @StateObject var counter: Counter // 뷰가 새로 생성되어도, 기존에 있던 값을 유지한다
    
    var body: some View {
        HStack {
            Text("\(self.counter.count)")
            Button {
                self.counter.add()
            } label: {
                Text("Add")
            }

        }
    }
    
}

struct ContentViewStateObject: View {
    @State private var isChanged: Bool = false
    
    var body: some View {
        VStack {
            CounterView(counter: Counter())
                .background(isChanged ? Color.red : Color.blue)
                .padding()
            
            Button {
                self.isChanged = true
            } label: {
                Text("Change")
            }

        }
    }
}

struct ContentViewStateObject_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewStateObject()
    }
}
