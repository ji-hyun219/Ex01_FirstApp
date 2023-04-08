# Ex01_FirstApp


### 👀 ObservableObject (감시할 수 있는)
ObservedObject 는 `Class` 임   


Swift 파일을 만드는데 이것은 Class 이다   
파일을 생성하면 `import Foundation` 이 써져 있는데, 이는 Class 를 지원해준다


- Published : Published 라는 어노테이션을 이용해서 변수를 외부에 발행한다
- init 함수는 클래스 생성자로, 클래스 생성 시 한 번 호출된다


struct 에서 Class 를 참조하고 있는 형태이다

---


### ✏️ State Binding 과 ObservableObject 차이
- State Binding 은 struct 간 데이터를 공유한다
- class 에 있는 데이터를 공유하기 위해서는 `observabledObject, observableObject, published` 쓰면 된다 (이는 쌍으로 알아두자!!!!)

---
### 👩🏻‍💻 StateObject
State 에는 value 값이 들어가야 value 가 변하면 뷰가 업데이트 된다. 근데 이때 뷰가 업데이트 되면 ObservedObject 가 들고 있던 값이 초기화된다. 이럴땐 StateObject 를 써야 한다는 것을 알았다

