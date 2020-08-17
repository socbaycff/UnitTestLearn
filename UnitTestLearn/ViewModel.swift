import Foundation
class MainViewModel { // test
    init (loginService: LoginProtocol) {
        self.loginService = loginService
    }
     let loginService : LoginProtocol
    
   public var coLoginThanhCong = false
    public var tinhToanService: TinhToanService!
    func login(id: String) {
        loginService.login(id: id) { isSusscess in
            
            print(isSusscess)
            coLoginThanhCong = isSusscess
        }
    }
    
    
    func cong(a: Int, b: Int) -> Int {
        tinhToanService.cong(a: a, b: b)
    }
    
    func chia(a: Int, b: Int) throws -> Int {
        try tinhToanService.chia(a: a, b: b)
    }
    
}
