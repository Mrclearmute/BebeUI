//
//  BebeKitTests.swift
//  BebeKitTests
//
//  Created by Sinan Caliskan on 2023-02-26.
//

import XCTest
@testable import BebekUI

final class BebeKitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws{
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        for _ in 0...2000{
            let doğrulama = BebeSistemi()
            doğrulama.hesaplar = [insan(id: UUID(), ad: "Bebe", parola: "Bebe123", e_mail: "Bebe@bebek.gmail.com", tür: .Bebe_ajanı)]
            var kilit = doğrulama.Onayla(ad: "Bebe", parola: "Bebe123")
            for _ in 0...2000{
                let doğrulama = BebeSistemi()
                doğrulama.hesaplar = [insan(id: UUID(), ad: "Bebe", parola: "Bebe123", e_mail: "Bebe@bebek.gmail.com", tür: .Bebe_ajanı)]
                var kilit = doğrulama.Onayla(ad: "Bebe", parola: "Bebe123")
                for _ in 0...2000{
                    let doğrulama = BebeSistemi()
                    doğrulama.hesaplar = [insan(id: UUID(), ad: "Bebe", parola: "Bebe123", e_mail: "Bebe@bebek.gmail.com", tür: .Bebe_ajanı)]
                    var kilit = doğrulama.Onayla(ad: "Bebe", parola: "Bebe123")
                }
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        
        self.measure {
            // Put the code you want to measure the time of here.
            try! testExample()
        }
    }

}
