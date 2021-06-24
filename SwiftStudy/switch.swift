//
//  switch.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/24.
//

import Foundation

let val = 2

switch val{
case 1:
    print("일치값은 1")
case 2:
    fallthrough
case 3:
    print("일치값은 3")
default:
    print("어느 패턴과도 일치하지 않습니다.")
}
