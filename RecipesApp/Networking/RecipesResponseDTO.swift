//
//  RecipesResponseDTO.swift
//  RecipesApp
//
//  Created by Selena García Lobo on 20/02/2024.
//

import Foundation

struct RecipeResponseDTO: Decodable {
    let recipes: [Recipe]
}
