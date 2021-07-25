    import XCTest
    @testable import SplatsvilleCore

    final class SplatsvilleCoreTests: XCTestCase {
        func testRequestSchedule() {
            let promise = expectation(description: "Status code: 200")
            SplatsvilleCore.requestSchedule {
                promise.fulfill()
            }
            wait(for: [promise], timeout: 5)
            
            XCTAssertEqual(SplatsvilleCore().text, "Hello, World!")
        }
    }
