//
//  UserInfoPage.swift
//  GithubFollowersUITests
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

struct UserInfoPage {
    static let app = XCUIApplication()
    
    static let dateLabel = app.staticTexts["dateLabel"]
}
