//
//  GithubFollowersUITests.swift
//  GithubFollowers
//
//  Created by Kirill Privalov on 25.05.2022.
//  Copyright © 2022 Elias Myronidis. All rights reserved.
//

import XCTest

class GithubFollowersUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    func testCheckRegistrationDate() {
        waitForElementAppearance(SearchPage.usernameTextField).tap()
        SearchPage.typeUsernameAndSearch("Gopito")
        waitForElementAppearance(FollowersPage.collectionView)
        FollowersPage.getFollowerByName("arazumoff").tap()
        XCTAssert(waitForElementAppearance(UserInfoPage.dateLabel).isHittable, "Не отображается дата регистрации пользователя")
        XCTAssert(UserInfoPage.dateLabel.label.contains("Aug 2010"), "Дата регистрации не соответствует августу 2010-го года")
    }

    func testCheckFavorites() {
        waitForElementAppearance(SearchPage.usernameTextField).tap()
        SearchPage.typeUsernameAndSearch("Gopito")
        waitForElementAppearance(FollowersPage.addToFavoritesButton).tap()
        waitForElementAppearance(FollowersPage.alertOkButton).tap()
        waitForElementAppearance(TabBar.favoritesTab).tap()
        waitForElementAppearance(FavoritesPage.favoritesHeader)
        XCTAssert(FavoritesPage.allFavoriteItems.count == 1, "На экране нет избранных пользователей либо больше одного избранного пользователя")
        XCTAssert(FavoritesPage.getFavoriteByName("gopito").isHittable, "Не отображается избранный пользователь либо имя не совпадает")
    }
}
