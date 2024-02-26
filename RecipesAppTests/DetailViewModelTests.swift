//
//  DetailViewModelTests.swift
//  RecipesAppTests
//
//  Created by Selena García Lobo on 26/02/2024.
//

import XCTest
import Combine

@testable import RecipesApp


final class DetailViewModelTests: XCTestCase {
    var viewModel: DetailViewModel!
    var cancellables: Set<AnyCancellable> = []

    override func setUpWithError() throws {
        viewModel = DetailViewModel(recipe: MockRecipesList.first!)
    }

    override func tearDownWithError() throws {
        viewModel = nil
        cancellables.removeAll()
    }

    func testLoadRecipeDetails() {
        XCTAssertEqual(viewModel.recipe.name, "panchuque")
        XCTAssertEqual(viewModel.recipe.ingredients, ["ing 1", "ingr2"])
    }
}
