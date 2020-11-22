
import XCTest
@testable import Req

final class ReqTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        var myReq = try? Req(url: "https://jsonplaceholder.typicode.com/todos")
        
        myReq?.header(key: "X-Headers-Work", value: "1")
        myReq?.header(key: "Cache-Control", value: "nostore")
        
        myReq?.send();
    }
    
    func baseTest() {
        let myReq = try? Req(url: "https://example.com/")
        XCTAssertEqual(myReq?.url, URL(string: "https://example.com/"))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
