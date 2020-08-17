import Foundation
class DefaultLogin : LoginProtocol {
    
    func login(id: String, completion: (Bool) -> Void) {
        if id == "admin" {
            completion(true)
        } else {
            completion(false)
        }
    }
}
