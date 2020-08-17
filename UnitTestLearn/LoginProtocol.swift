import Foundation
protocol LoginProtocol {
    func login(id: String, completion: (Bool) -> Void)
}
