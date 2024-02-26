//
//  MockRecipeService.swift
//  RecipesApp
//
//  Created by Selena García Lobo on 24/02/2024.
//

import Foundation
import Combine

let MockRecipesList = [Recipe(id: "12", name: "panchuque", image: URL(string: "imageUrl")!, description: "description", ingredients: ["ing 1","ingr2"], location: Location(lat: -26.808285, lng: -65.217590)),Recipe(id: "12", name: "Pancakes", image: URL(string: "imageUrl")!, description: "description", ingredients: ["ing 1","ingr2"], location: Location(lat: -26.808285, lng: -65.217590))]

class MockRecipeService: RecipeService {
    func getRecipes() -> AnyPublisher<[Recipe], Error> {
        return Just(MockRecipesList)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
