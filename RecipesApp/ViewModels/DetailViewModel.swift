//
//  DetailViewModel.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI
import MapKit

class DetailViewModel: ObservableObject {
    @Published var recipe: Recipe
    @Published var isAnnotationAnimating: Bool = false


    init(recipe: Recipe) {
        self.recipe = recipe
    }

    func startAnnotationAnimation() {
        withAnimation {
            isAnnotationAnimating.toggle()
        }
    }

}

