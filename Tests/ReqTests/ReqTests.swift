
import XCTest
@testable import Req

final class ReqTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
    }
    
    func baseTest() {
        let myReq = try? Req(url: "https://example.com/")
        XCTAssertEqual(myReq?.url, URL(string: "https://example.com/"))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
