//
//  HomeView.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    var body: some View {
        VStack {
            SearchBar(searchText: $viewModel.searchText,
                      filters: $viewModel.filters,
                      onFilterAdd: viewModel.onFilterAdd,
                      onFilterRemove: viewModel.removeFilter)

            ZStack {
                List(viewModel.filteredRecipes) { recipe in
                    NavigationLink(destination: DetailView(recipe: recipe)) {
                        RecipeRow(recipe: recipe)
                    }
                }
                if $viewModel.showLoader.wrappedValue {
                    ProgressView()
                }
            }


        }
        .navigationTitle("Recetas")
    }
}


