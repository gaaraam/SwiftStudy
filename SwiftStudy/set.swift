//
//  set.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

// MARK: set(집합)

// 제네릭은 생략되어도 상관없다.
var genres: Set<String> = ["Classic", "Jazz", "Rock"]

genres.insert("Ballad") // ["Jazz", "Classic", "Ballad", "Rock"]

if genres.isEmpty {
    print("집합이 비어있습니다.")
} else {
    print("집합에는 현재 \(genres.count)개의 아이템이 저장되어 있습니다.") // 4개
}

genres.remove("Ballad")

// ["Jazz", "Classic", "Rock"]

var hasJazz = genres.contains("Jazz")
// true

var oddDigits: Set = [1, 3, 5, 7, 9] // 홀수 집합
let evenDigits: Set = [0, 2, 4, 6, 8] // 짝수 집합
let primeDigits: Set = [2, 3, 5, 7] // 소수 집합

oddDigits.intersection(evenDigits).sorted() // []
oddDigits.symmetricDifference(primeDigits).sorted() // [1,2,9]
oddDigits.union(evenDigits).sorted()
// [0,1,2,3,4,5,6,7,8,9]
oddDigits.subtract(primeDigits)
oddDigits.sorted() // [1,9]


let A: Set = [1, 3, 5, 7, 9]
let B: Set = [3, 5]
let C: Set = [3, 5]
let D: Set = [2, 4, 6]

B.isSubset(of: A) // true
A.isSuperset(of: B) // true
C.isStrictSubset(of: A) // true
C.isStrictSubset(of: B) // false
A.isDisjoint(with: D) // true

var arrays = [4, 2, 5, 1, 7, 4, 6, 8, 3, 4, 5, 7, 2, 1, 7, 4]

let setArray = Set(arrays) // 집합
arrays = Array(setArray) // 중복이 제거된 배열
print(arrays)

