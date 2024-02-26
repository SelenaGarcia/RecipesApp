//
//  ContentView.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = HomeViewModel(recipeService: DefaultRecipeService(), recipes: [])

    var body: some View {
        NavigationView {
            HomeView(viewModel: viewModel)
                .onAppear {
                    viewModel.loadRecipes()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

