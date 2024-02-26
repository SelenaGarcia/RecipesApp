//
//  HomeViewModelTests.swift
//  HomeViewModelTests
//
//  Created by Selena García Lobo on 24/02/2024.
//

import XCTest
@testable import RecipesApp

final class HomeViewModelTests: XCTestCase {
    var viewModel: HomeViewModel!

    override func setUpWithError() throws {
        super.setUp()
        viewModel = HomeViewModel(recipeService: MockRecipeService(), recipes: [])
        viewModel.loadRecipes()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        super.tearDown()
    }

    func testFilterRecipes() {
        viewModel.searchText = "Pancakes"
        viewModel.filterRecipes()
        XCTAssertTrue(viewModel.filteredRecipes.count > 0)
        XCTAssertEqual(viewModel.filteredRecipes.first?.name, "Pancakes")
    }


}
