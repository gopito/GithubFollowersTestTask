//
//  SearchPage.swift
//  GithubFollowersUITests
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

struct SearchPage {
    static let app = XCUIApplication()
    
    static let usernameTextField = app.textFields["usernameTextField"]
    static let getFollowersButton = app.buttons["getFollowersButton"]
    static func typeUsernameAndSearch(_ username: String) {
        XCTestCase().waitForElementAppearance(usernameTextField).typeText(username)
        XCTestCase().waitForElementAppearance(app.keyboards.buttons["Go"]).tap()
    }
}
