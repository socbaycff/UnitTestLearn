import Foundation
@testable import UnitTestLearn
class FakeLoginService: LoginProtocol {
    var count = 0
    func login(id: String, completion: (Bool) -> Void) {
        if (id == "test") {
            count += 1
            completion(true)
        }
        
    }
}
