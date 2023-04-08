//
//  ContentView_AppStorage.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/04/08.
//

import SwiftUI

@available(iOS 14.0, *) // iOS 14.0 이상 모든 버전에서 사용가능함
struct LoginCheck: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = UserDefaults.standard.bool(forKey: "isLoggedIn")
    var body: some View {
        if isLoggedIn {
            Text("로그인된 상태입니다.")
            Button {
                self.isLoggedIn = false
            } label: {
                Text("로그아웃")
            }

        } else {
            Text("로그아웃된 상태입니다.")
            Button {
                self.isLoggedIn = true
            } label: {
                Text("로그인")
            }
        }
    }
}



struct ContentViewAppStorage: View {
    var body: some View {
        LoginCheck()
    }
}

struct ContentViewAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewAppStorage()
    }
}
