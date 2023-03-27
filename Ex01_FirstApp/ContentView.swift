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
    // Environment 속성래퍼: 환경설정을 읽어오는 어노테이션
    @Environment(\.colorScheme) var colorScheme
    
    
    
    // some 예약어: View 프로토콜을 준수하는 모든 뷰에 대한 불투명(관용적인) 타입 허용
    var body: some View {
        Text("스위프트 UI 입니다! 스위프트 UI 입니다! 스위프트 UI 입니다! 스위프트 UI 입니다!")
            .fontWeight(.bold)
            .multilineTextAlignment(.trailing)
            .padding(.all, 30.0).font(.system(size: 28))
        // 배경 색상
            .frame(width: 300.0, height: 300.0)
            .background(colorScheme == .light ? Color.white : Color.black)
        // 콘텐츠 색상
            .foregroundColor(colorScheme == .light ? Color.black : Color.white)
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            .border(Color.purple, width: 5)
            
            
    }
}

// 미리보기 화면 정의
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // 기본 모드
            ContentView().environment(\.colorScheme, .light)
            // 다크 모드
            ContentView().environment(\.colorScheme, .dark)
          
        }
    }
}
