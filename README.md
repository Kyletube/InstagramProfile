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
- - -
### UserDefaults
- 작은 크기의 사용자 데이터를 저장하기 위한 심플한 키-값 저장소입니다. 이는 iOS 앱의 설정 값이나 간단한 데이터를 빠르게 저장하고 읽어올 때 주로 사용됩니다.
#### 장점
1. 간단한 사용법: API가 단순해서 사용하기 쉽습니다.
2. 캐시 및 임시 데이터 저장: 작은 데이터를 저장하기 좋습니다.
3. 빠른접근: 데이터를 빠르게 읽고 쓸 수 있습니다.
#### 단점
1. 데이터 타입 제한: 기본 데이터 타입 외의 복잡한 객체는 저장하기 어렵습니다.
2. 보안: 암호화가 되어있지 않아 보안에 취약합니다.
3. 용량 제한: 큰 데이터를 저장하기에는 부적절합니다.
- - -
### CoreData
- 객체 관계 매핑(Object-Relational Mapping, ORM)을 제공하는 프레임워크로, 복잡한 객체 구조와 큰 데이터를 저장하고 관리할 수 있습니다.
#### 장점
1. 복잡한 데이터 구조 지원: 다양한 타입의 복잡한 데이터를 관리할 수 있습니다.(ex: CustomClass)
2. 쿼리 최적화: 데이터를 효율적으로 필터링하고 정렬할 수 있습니다.
#### 단점
1. 학습 곡선: API가 복잡하여 학습이 어려울 수 있습니다.
2. 성능: 큰 데이터를 처리할 때는 최적화가 필요하며, 설정이 복잡할 수 있습니다.
- - -
#### UserDefaults와 CoreData의 차이점
1. 용도: UserDefaults는 간단한 데이터 저장에, CoreData는 복잡한 데이터 관리에 적합합니다.
2. 복잡성: UserDefaults는 간단한 API를 가지고 있으나, CoreData는 많은 기능과 복잡성을 가집니다.
3. 데이터 타입: UserDefaults는 기본적인 데이터 타입만 지원하며, CoreData는 다양한 객체와 관계를 지원합니다.
4. 보안성: CoreData는 보안 옵션을 추가로 설정할 수 있지만, UserDefaults는 기본적으로 암호화되지 않습니다.
- - -
## 앱의 구조와 데이터 일관성에 대해
- EditProfileViewController에서는 SnapKit을 사용해 UI를 코드로 구현하고 있습니다.
- ViewModel을 통해 CoreData로부터 데이터를 읽고 쓰는 작업을 수행합니다.
- populteUserData() 함수를 통해 초기 사용자 데이터를 화면에 표시합니다.
### 데이터 일관성
- saveUserData(name:age:)와 fetchUserData()함수를 통해 CoreData와의 데이터 일관성을 유지합니다.
- viewModel.saveUserData를 호출할 때마다 CoreData가 업데이트 되므로, 앱의 다른 부분에서도 최신 데이터를 쉽게 얻을 수 있습니다.


