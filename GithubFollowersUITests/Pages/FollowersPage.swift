//
//  FollowersPage.swift
//  GithubFollowersUITests
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

struct FollowersPage {
    static let app = XCUIApplication()
        
    static let collectionView = app.collectionViews["followersList"]
    static let alert = app.otherElements["followersScreenAlert"]
    static var getFollowerByName: (String) -> XCUIElement = { name in
        collectionView.staticTexts[name]
    }
    static var getFollowerByIndex: (Int) -> XCUIElement = { index in
        collectionView.staticTexts.allElementsBoundByIndex[index]
    }
    static let addToFavoritesButton = app.buttons["addToFavoritesButton"]
    static let alertOkButton = alert.buttons["alertOkButton"]
}
