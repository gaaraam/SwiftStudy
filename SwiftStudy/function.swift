//
//  function.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

func getIndvInfo() -> (h: Int, n: String){
    let height = 198
    let name = "kobe"
    
    return(height, name)
}

var uInfo = getIndvInfo()
print(uInfo.0)
print(uInfo.1)
print(uInfo.h)
print(uInfo.n)

// type alias

typealias infoResult = (Int, Character, String)

func getUserInfo() -> infoResult {
    let gender: Character = "M"
    let height = 198
    let name = "kobe"
    
    return (height, gender, name)
}

// func 함수이름(외부매개변수명 내부매개변수명 : 타입, 외부매개변수명 내부매개변수명 : 타입) { ... }

func printHello(to name: String, welcomeMessage msg: String){
    print("\(name)님, \(msg)")
}

printHello(to: "가람", welcomeMessage: "안녕하세요")

// 가변인자

func avg(score: Int...) -> Double {
    var total = 0
    for r in score{
        total += r
    }
    return (Double(total) / Double(score.count))
}

print(avg(score: 100, 90, 80, 100))


// 클로저(익명 함수)

let f = { () -> Void in
    print("클로저가 실행됩니다")
}
f()

({ () -> Void in
    print("클로저가 실행됩니다")
})()

// 경량 문법

var value = [1, 9, 5, 7, 3, 2]

//func order(s1: Int, s2: Int) -> Bool {
//    if s1 > s2 {
//        return true
//    } else {
//        return false
//    }
//}
//value.sort(by: order)


value.sort(by: {
    (s1: Int, s2: Int) -> Bool in
    if s1 > s2 {
        return true
    } else {
        return false
    }
})
