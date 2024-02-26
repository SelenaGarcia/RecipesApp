//
//  MapViewModelTest.swift
//  RecipesAppTests
//
//  Created by Selena García Lobo on 26/02/2024.
//

import XCTest
import Combine
import MapKit

@testable import RecipesApp

final class MapViewModelTest: XCTestCase {
    var viewModel: MapViewModel!
    var cancellables: Set<AnyCancellable> = []

    override func setUpWithError() throws {
        viewModel = MapViewModel(recipe: MockRecipesList.first!)

    }

    override func tearDownWithError() throws {
        viewModel = nil
        cancellables.removeAll()
    }

    func testLoadRecipeLocation() {
        XCTAssertEqual(viewModel.region.center.latitude ,-26.808285)
        XCTAssertEqual(viewModel.region.center.longitude ,-65.217590)
    }

}
