//
//  DefaultTinhToan.swift
//  UnitTestLearn
//
//  Created by L Khang on 8/17/20.
//  Copyright © 2020 L Khang. All rights reserved.
//

import Foundation
class DefaultTinhToan : TinhToanService {
    func chia(a: Int, b: Int) throws -> Int {
        if (b == 0) {
            throw TinhToanError.MauZero
        }
    
        return a / b
    }
    func cong(a: Int, b: Int) -> Int {
        return a + b
    }
}


enum TinhToanError: Error {
    case MauZero
}
