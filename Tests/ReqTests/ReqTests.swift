import XCTest
@testable import Req

final class ReqTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
    }
    
    func baseTest() {
//        XCTAssertEqual(Req.query(url: "awd", method: Method.POST), "foo bar")
        XCTAssertEqual(Req(url: "https://example.com/").url, "https://example.com/")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
