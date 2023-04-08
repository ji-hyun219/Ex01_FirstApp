//
//  ContentView_Environment.swift
//  Ex01_FirstApp
//
//  Created by 이지현 on 2023/04/08.
//

import SwiftUI

// 우선 SwiftUI 에서 Environment 라는 것은 Property Wrapper 라는 특수한 형태의 구조체이다
// 구조체라는 말은 여러 프로퍼티 값들을 갖고 있다는 말인데, Environment 는 말 그대로 View 의 "환경" 과 관련된 값들을 갖고 있다
// Environment 는 View 와 관련된 여러 변수들을 View 계층 구조에 전반에 걸쳐 보급되는 역할을 한다
// 그래서 상위 View 에서 environment() 함수를 통해 Environment Value 를 지정해주면, 하위 View 에서 적당히 꺼내 쓸 수 있다
// 이때, Environment Value 내용이 변경되면, 자동으로 그 변경이 전파된다
// https://developer.apple.com/documentation/swiftui/environmentvalues




struct ContentViewEnvironment: View {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.locale) private var locale
    @Environment(\.calendar) private var calendar
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack {
            Text(colorScheme == .dark ? "Dark mode" : "Light mode").foregroundColor(.red)
            Text(locale.description)
            Text(calendar.description)
            // Compact 사이즈 클래스는 제약이 적용된 공간을 나타냅니다.
            // Compact 사이즈 클래스를 사용할 경우 화면을 다중으로 나눠서 사용할 수 없습니다.
            // Regular 사이즈 클래스는 제약이 적용되지 않은 공간을 나타냅니다
            // Regular 사이즈 클래스를 사용할 경우 화면을 다중으로 나눠서 사용할 수 있습니다. 이 말은 즉슨 한 화면에 다양한 view를 띄워서 사용할 수 있다는 것입니다.
            // iPad의 경우 width, height 속성 모두 Regular 사이즈 클래스를 준수합니다
            // https://kurediary.tistory.com/23
            // 12.9인치 아이패드처럼 큰 화면에서 앱이 보일 때, 여러가지 화면에서 앱의 레이아웃을 자동으로 조정하기 위해
            // 만들어진 2개의 클래스입니다
            Text(horizontalSizeClass == .compact ? "Compact" : "Regular")
            Text(verticalSizeClass == .compact ? "Compact" : "Regular")
            
            if (verticalSizeClass == .regular) {
                VStack {
                    Text("Alice")
                    Text("Bob")
                    Text("John")
                }
                .font(.headline).foregroundColor(.red)
                
            } else {
                VStack {
                    Text("Alice")
                    Text("Bob")
                    Text("John")
                }
                .font(.headline)
            }
        }
    }
}

struct ContentViewEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentViewEnvironment()
                .environment(\.colorScheme, .dark)
            ContentViewEnvironment()
                .environment(\.colorScheme, .light)
        }
        
    }
}
