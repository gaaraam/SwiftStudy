//
//  optional.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

var optInt: Int? = 3

print("옵셔널 자체의 값: \(optInt)") // Optional(3)
print("!로 강제해제한 값: \(optInt!)") // 3

var str = "123"
var intFromStr = Int(str)

if intFromStr != nil {
    print("변환된 값은 \(intFromStr!)입니다")
} else {
    print("실패")
}

func intStr(str: String){
    
    guard let intFromStr = Int(str) else {
        print("값 변환에 실패하였습니다.")
        return
    }
    
    print("값이 변환되었습니다. 변환된 값은 \(intFromStr)입니다.")
}
