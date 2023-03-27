//
//  ContentView.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/03/27.
//

// SwiftUI 지원 라이브러리 임포트
import SwiftUI


struct MyText : View {
    var body: some View {
        Text("안녕").padding(.all)
    }
}


// View 프로토콜: 화면이 보이는 요소
struct ContentView: View {
    
    // some 예약어: View 프로토콜을 준수하는 모든 뷰에 대한 불투명(관용적인) 타입 허용
    var body: some View {
        
        VStack {
            HStack { // 수평 방향 정렬
                
                MyText()
                MyText()
            }
            Divider()
            VStack { // 수직 방향 정렬
                MyText()
                MyText()
            }
            Divider()
            HStack(alignment: .center, spacing: 10.0){
                MyText()
                MyText()
            }
            ZStack { // 상하 방향 정렬
                Color.yellow.edgesIgnoringSafeArea(.all)
                Color.red.frame(width: 200, height: 200)
                Color.blue.frame(width: 100, height: 100)
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Text("Hello").font(.caption)
                Text("Hello")
                Text("Hello").font(.title)
                Text("Hello").font(.largeTitle)
            }
        }
            
    }
}

// 미리보기 화면 정의
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
