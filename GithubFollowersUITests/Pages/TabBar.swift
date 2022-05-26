//
//  TabBar.swift
//  GithubFollowersUITests
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

struct TabBar {
    static let app = XCUIApplication()
    
    static let searchTab = app.buttons["searchTab"]
    static let favoritesTab = app.buttons["favoritesTab"]
}
