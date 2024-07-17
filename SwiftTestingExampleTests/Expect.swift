import XCTest
import Testing
@testable import SwiftTestingExample

struct Expect {
    
    @Test("テストの説明") func example() async throws {
        let a = 0
        let b = 1
        #expect(a > b)
    }
}

class OldStyleTest: XCTestCase {
    
    func test_hogehoge() {
        let a = 0
        let b = 1
        XCTAssertTrue(a > b)
        XCTAssertGreaterThan(a, b)
    }
    
    func nonTestMethod() {
    }
}
