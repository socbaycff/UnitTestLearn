import Foundation
@testable import UnitTestLearn
class FakeTinhToan: TinhToanService {
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
