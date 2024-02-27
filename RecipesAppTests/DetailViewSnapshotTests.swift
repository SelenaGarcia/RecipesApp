//
//  DetailViewSnapshotTests.swift
//  RecipesAppTests
//
//  Created by Selena García Lobo on 27/02/2024.
//

import XCTest
import SnapshotTesting
@testable import RecipesApp

final class DetailViewSnapshotTests: XCTestCase {

    func testDetailViewSnapshot() throws {
        let recipe = MockRecipesList.first!
        let showDetailView = DetailView(recipe: recipe)
            .frame(width: 375, height: 667)

        XCTAssertNotNil(recipe.image)

        assertSnapshot(matching: showDetailView, as: .image)
    }

}
