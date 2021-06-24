//
//  tuple.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/25.
//

import Foundation

// MARK: 튜플

let tupleValue = ("a", "b", 1, 2.5, true)

var tpl01: (Int, Int) = (2, 4)
var tpl02: (String, Int) = ("kobe", 24)
var (black, mamba) = tpl02

print(black) // kobe
print(mamba - 16) // 8

var tpl03: (Int, (String, String)) = (22, ("Itzy", "yeji"))

func getTupleValue() -> (String, String, Int){
    return("t", "v", 100)
}

let (a, b, c) = getTupleValue()
