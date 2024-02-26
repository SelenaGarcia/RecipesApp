//
//  RecipeRow.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI

struct RecipeRow: View {
    let recipe: Recipe
    var body: some View {
        HStack {
                RemoteImage(url: recipe.image)
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))

                VStack(alignment: .leading, spacing: 4) {
                    Text(recipe.name)
                        .font(.headline)

                }

        }
        .padding(8)
    }
}

