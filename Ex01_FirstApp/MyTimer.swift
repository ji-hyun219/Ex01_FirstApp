//
//  MyTimer.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/04/02.
//
// 파일 생성법 : ContentView.swift 를 누른 후 상단에 File > New > File.. > Swift File 선택

import Foundation

class MyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    // 클래스 생성자 함수: 클래스 생성 시 한번 호출됨
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
