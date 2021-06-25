//
//  classStruct.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

struct Resolution{
    var width = 0
    var height = 0
    
    func desc() -> String {
        return "Resolution 구조체"
    }
}

class VideoMode{
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
    func desc() -> String {
        return "VideoMode 클래스"
    }
}

// 인스턴스 생성하고 상수에 할당
let insRes = Resolution()
let insVMode = VideoMode()

let width = insRes.width
print("insRes 인스턴스의 width값은 \(width)입니다.")

// 멤버와이즈 초기화

let defaultRes = Resolution(width: 1024, height: 768)

// 저장 프로퍼티

class User {
    // 저장 프로퍼티 초기화 방법 4가지
    var name: String
    var height: Int?
    var weight: Int!
    var age: Int = 0
    
    init(){
        self.name = ""
    }
}

// 연산 프로퍼티

struct UserInfo {
    // 저장 프로퍼티: 태어난 연도
    var birth: Int!
    
    // 연산 프로퍼티: 올해가 몇년도인지 계산
    var thisYear: Int! {
        get {
            let df = DateFormatter()
            df.dateFormat = "yyyy"
            return Int(df.string(from: Date()))
        }
    }
    
    // 연산 프로퍼티: 올해 - 태어난 연도 + 1
    var age: Int {
        get {
            return (self.thisYear - self.birth) + 1
    }
}
}

let info = UserInfo(birth: 1980)
print(info.age)

struct Position{
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size{
    var width: Double = 0.0
    var height: Double = 0.0
}

struct Rect {
    var origin = Position()
    var size = Size()
    
    var center: Position {
        get {
            let centerX = self.origin.x + (self.size.width / 2)
            let centerY = self.origin.y + (self.size.height / 2)
            return Position(x: centerX, y: centerY)
        }
        set(newCenter) {
            self.origin.x = newCenter.x - (size.width / 2)
            self.origin.y = newCenter.y - (size.height / 2)
        }
    }
}

let p = Position(x: 0.0, y: 0.0)
let s = Size(width: 10.0, height: 10.0)

var square = Rect(origin: p, size: s)
print("square.centerX = \(square.center.x), square.centerY = \(square.center.y)")

class A {
    var name = "Class A"
    
    var description: String {
        return "This class name is \(self.name)"
    }
    
    func foo() {
        print("\(self.name)'s method is called")
    }
}

// 서브클래스

class B: A {
    var prop = "class B"
    
    func boo() -> String {
        return "Class B prop = \(self.prop)"
    }
}

let b = B()
print(b.name)
