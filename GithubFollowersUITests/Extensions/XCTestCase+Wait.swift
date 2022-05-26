//
//  XCTestCase+Wait.swift
//  GithubFollowersUITests
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

extension XCTestCase {
    @discardableResult
    func waitForElementAppearance(_ element: XCUIElement,
                                  timeout: Int = 5) -> XCUIElement {
        return waitForElementPredicateExpectation(element,
                                                  predicate: NSPredicate(format: "exists == 1"),
                                                  timeout: TimeInterval(timeout))
    }

    @discardableResult
    func waitForElementPredicateExpectation(_ element: XCUIElement,
                                            predicate: NSPredicate,
                                            timeout: TimeInterval = 5) -> XCUIElement {
        expectation(for: predicate, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
        return element
    }
}
