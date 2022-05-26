//
//  FavoritesPage.swift
//  GithubFollowersUITests
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

struct FavoritesPage {
    static let app = XCUIApplication()
    
    static let favoritesHeader = app.navigationBars["favoritesHeader"]
    static let getFavoriteByName: (String) -> XCUIElement = { name in
        app.tables.cells.containing(.staticText, identifier: name).element
    }
    static let getFavoriteByIndex: (Int) -> XCUIElement = { index in
        app.tables.cells.matching(identifier: "favoritesItem").allElementsBoundByIndex[index]
    }
    static let allFavoriteItems: [XCUIElement] = app.tables.cells.matching(identifier: "favoritesItem").allElementsBoundByIndex
}
