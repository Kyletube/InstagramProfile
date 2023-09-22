# 📋 InstagramProfile

인스타그램 프로필 화면 Clone앱 + CoreData + MVVM

- - -
<br><br>

## 🛠️ 사용한 기술 스택 (Tech Stack)
<img src="https://img.shields.io/badge/Swift-F05138?style=for-the-badge&logo=Swift&logoColor=white"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"><img src="https://img.shields.io/badge/SnapKit-FA7343?style=for-the-badge&logo=SnapKit&logoColor=white"><img src="https://img.shields.io/badge/CoreData-3C3B37?style=for-the-badge&logo=Core-Data&logoColor=white">

- - -
<br><br>

## 🗓️ 개발 기간
* 2023-09-12(화) ~ 2023-09-22(금), 9일간
- - -
<br><br>

## UserDefaults와 CoreData의 개념과 장단점

### UserDefaults
- 작은 크기의 사용자 데이터를 저장하기 위한 심플한 키-값 저장소입니다. 이는 iOS 앱의 설정 값이나 간단한 데이터를 빠르게 저장하고 읽어올 때 주로 사용됩니다.
#### 장점
1. `간단한 사용법`: API가 단순해서 사용하기 쉽습니다.
2. `캐시 및 임시 데이터 저장`: 작은 데이터를 저장하기 좋습니다.
3. `빠른접근`: 데이터를 빠르게 읽고 쓸 수 있습니다.
#### 단점
1. `데이터 타입 제한`: 기본 데이터 타입 외의 복잡한 객체는 저장하기 어렵습니다.
2. `보안`: 암호화가 되어있지 않아 보안에 취약합니다.
3. `용량 제한`: 큰 데이터를 저장하기에는 부적절합니다.
- - -
### CoreData
- 객체 관계 매핑(Object-Relational Mapping, ORM)을 제공하는 프레임워크로, 복잡한 객체 구조와 큰 데이터를 저장하고 관리할 수 있습니다.
#### 장점
1. `복잡한 데이터 구조 지원`: 다양한 타입의 복잡한 데이터를 관리할 수 있습니다.(ex: CustomClass)
2. `쿼리 최적화`: 데이터를 효율적으로 필터링하고 정렬할 수 있습니다.
#### 단점
1. `학습 곡선`: API가 복잡하여 학습이 어려울 수 있습니다.
2. `성능`: 큰 데이터를 처리할 때는 최적화가 필요하며, 설정이 복잡할 수 있습니다.
- - -
<br>

## UserDefaults와 CoreData의 차이점
1. `용도`: UserDefaults는 간단한 데이터 저장에, CoreData는 복잡한 데이터 관리에 적합합니다.
2. `복잡성`: UserDefaults는 간단한 API를 가지고 있으나, CoreData는 많은 기능과 복잡성을 가집니다.
3. `데이터 타입`: UserDefaults는 기본적인 데이터 타입만 지원하며, CoreData는 다양한 객체와 관계를 지원합니다.
4. `보안성`: CoreData는 보안 옵션을 추가로 설정할 수 있지만, UserDefaults는 기본적으로 암호화되지 않습니다.
- - -
<br><br>
## 앱의 구조와 데이터 일관성에 대해
- ViewModel을 통해 CoreData로부터 데이터를 읽고 쓰는 작업을 수행합니다.
- populteUserData() 함수를 통해 초기 사용자 데이터를 화면에 표시합니다.
<br><br>
### 데이터 일관성
- saveUserData(name:age:)와 fetchUserData()함수를 통해 CoreData와의 데이터 일관성을 유지합니다.
- viewModel.saveUserData를 호출할 때마다 CoreData가 업데이트 되므로, 앱의 다른 부분에서도 최신 데이터를 쉽게 얻을 수 있습니다.
- - -
<br>

## MVVM과 MVC의 개념과 장단점

### MVVM(Model-View-ViewModel)
1. `구성요소`: Model, View, ViewModel
2. `데이터 바인딩`: View와 ViewModel 사이에 양방향 데이터 바인딩이 가능합니다.
3. `의존성`: View는 ViewModel에 의존하고, ViewModel은 Model에 의존합니다.
4. `목적`: 사용자 인터페이스와 비즈니스 로직의 느슨한 결합을 통해 유닛 테스트와 유지 보수가 쉽도록 설계되었습니다.
#### 장점
1. `유닛 테스팅`: ViewModel은 View에 의존하지 않기 때문에 유닛 테스팅이 쉽습니다.
2. `데이터 바인딩`: 양방향 데이터 바인딩을 통해 코드량을 줄일 수 있습니다.
3. `의존성 분리`: ViewModel을 통해 View와 Model의 의존성이 줄어듭니다.
#### 단점
1. `복잡성`: 데이터 바인딩과 ViewModel의 추가로 초기 설정이 복잡할 수 있습니다.
2. `성능`: 데이터 바인딩이 너무 복잡하게 구성되면 성능에 영향을 줄 수 있습니다.
- - -
### MVC(Model-View-Controller)
1. `구성요소`: Model, View, Controller
2. `데이터 바인딩`: 일반적으로 단방향 데이터 흐름을 갖습니다.
3. `의존성`: View와 Controller가 Model에 의존합니다.
4. `목적`: 사용자 인터페이스와 비즈니스 로직을 분리하여 코드의 재사용성과 유지보수를 용이하게 합니다.
#### 장점
1. `간단성`: 구조가 단순하여 이해하기 쉽고 빠르게 개발할 수 있습니다.
2. `재사용성`: Model과 View를 재사용하기 쉽습니다.
#### 단점
1. `테스팅`: Controller가 View와 강하게 연결되어 있어 유닛 테스팅이 어렵습니다.
2. `의존성`: View와 Controller가 Model에 의존하므로 의존성이 높습니다.
- - -
<br>
