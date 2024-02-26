//
//  RecipeService.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import Foundation
import Combine

protocol RecipeService {
    func getRecipes() -> AnyPublisher<[Recipe], Error>
}

class DefaultRecipeService: RecipeService {
    private let apiClient: APIClient

    init(apiClient: APIClient = .shared) {
        self.apiClient = apiClient
    }

    func getRecipes() -> AnyPublisher<[Recipe], Error> {
        return apiClient.getRecipes()
    }
}
