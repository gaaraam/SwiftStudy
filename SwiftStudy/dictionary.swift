//
//  dictionary.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

// MARK: 딕셔너리(Dictionary)

var capital = Dictionary<String, Int>()
var capital2 = [String: String]()

capital2["JP"] = "Tokyo"
capital2["KR"] = "Seoul"

print(capital2) // ["JP": "Tokyo", "KR": "Seoul"]

capital2.updateValue("Paris", forKey: "FR")
capital2.updateValue("London", forKey: "UK")
capital2.updateValue("Sapporo", forKey: "JP")

print(capital2) // ["FR": "Paris", "KR": "Seoul", "JP": "Sapporo", "UK": "London"]

capital2["UK"] =  nil
capital2.removeValue(forKey: "FR")

print(capital2) // ["JP": "Sapporo", "KR": "Seoul"]

// 순회탐색

for (key, value) in capital2 {
    print("현재 데이터는 \(key) : \(value)입니다.")
}
