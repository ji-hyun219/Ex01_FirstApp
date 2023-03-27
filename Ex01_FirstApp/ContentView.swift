//
//  ContentView.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/03/27.
//

// SwiftUI 지원 라이브러리 임포트
import SwiftUI


// View 프로토콜: 화면이 보이는 요소
struct ContentView: View {
    // some 예약어: View 프로토콜을 준수하는 모든 뷰에 대한 불투명(관용적인) 타입 허용
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, swiftUI!")
        }
        .padding()
    }
}

// 미리보기 화면 정의
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
