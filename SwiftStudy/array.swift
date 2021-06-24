//
//  array.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

var cities = ["Seoul", "New York", "LA", "Santiago"]

print(cities[0])

let length = cities.count

for i in 0..<length {
    print("\(i)번째 배열 원소는 \(cities[i])입니다.")
}

var cities2 = Array<String>()
var cities3: Array<String> = Array()
var cities4 = [String]()
var cities5: [String] = []

cities.append("Tokyo")
cities.insert("London", at: 2)

cities.append(contentsOf: ["Paris", "Milan"])
print(cities)

cities2 = [String](repeating: "None", count: 4)
print(cities2)

print(cities[0...2])
