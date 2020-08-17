import XCTest
@testable import UnitTestLearn

class MainViewModelTests: XCTestCase {
    var mainViewModel : MainViewModel? = nil
    var fakeService : FakeLoginService? = nil
    var tinhToanService : FakeTinhToan? = nil
    override func setUpWithError() throws {
        fakeService = FakeLoginService()
        mainViewModel = MainViewModel(loginService: fakeService!)
        tinhToanService = FakeTinhToan()
        mainViewModel?.tinhToanService = tinhToanService
    }


    override func tearDownWithError() throws {
      mainViewModel = nil
        fakeService = nil
    }

    // test class co goi dependency hay k , va test closure co code dung
    func testLoginTestIDSuccess() {
        // setup: Arrange, chuan bi , given
         let id = "test"
         
        XCTAssert(fakeService?.count == 0)
              XCTAssert(mainViewModel?.coLoginThanhCong == false)
         // Act : thuc thi when
         mainViewModel?.login(id: id)
         
         // Assert : kiem tra ket qua then
         XCTAssert(fakeService?.count == 1)
        XCTAssert(mainViewModel?.coLoginThanhCong == true)
    }
    
    // tuong tu tren
    func testLoginOtherIDSuccess() {
         // setup: Arrange, chuan bi , given
          let id = "other"
          
          // Act : thuc thi when
          mainViewModel?.login(id: id)
          
          // Assert : kiem tra ket qua then
          XCTAssert(fakeService?.count == 0)
        XCTAssert(mainViewModel?.coLoginThanhCong == false)
     }
    
   // test cac ham return
    func testCongWhen4and5Then9() {
        // Arrange
        
        // act
        let result = mainViewModel?.cong(a: 4, b: 5)
        
        XCTAssertEqual(result, 9, "4 cong 5 bang 9")
    }
    
    
    func testQuangError() {
      
        
        XCTAssertThrowsError(try mainViewModel?.chia(a: 4, b: 0), "Tham so gay throw error") { (err) in
            print(err)
        }
    }
  
    // test bat dong bo
    func test() {
        let expect = expectation(description: "")
        
        
        expect.fulfill()
        
        
        wait(for: [expect], timeout: 5) // chan ham chay het
        
        XCTAssert(true)
    }

}
