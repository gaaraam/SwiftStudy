//
//  guard.swift
//  SwiftStudy
//
//  Created by 이가람 on 2021/06/24.
//

import Foundation

func divide(base: Int){
    
    guard base != 0 else {
        print("연산할 수 없습니다.")
        return
    }
    
    let result = 100 / base
    print(result)
}
