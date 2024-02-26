//
//  HomeViewModel.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI
import Combine

// HomeViewModel
class HomeViewModel: ObservableObject {
    @Published var recipes: [Recipe]
    @Published var searchText: String = ""
    @Published var filters: [String] = []

    @Published var filteredRecipes: [Recipe] = []
    @Published var showLoader: Bool = true

    var recipeService: RecipeService
    private var allRecipes: [Recipe]
    private var cancellables: Set<AnyCancellable> = []

    func onFilterAdd(_ filter: String) {
        guard filter.isNotEmpty else {
            return
        }

        filters.append(filter)
        searchText = ""
    }

    func removeFilter(_ filter: String) {
        filters.removeAll { $0 == filter }
        filterRecipes()
    }

    init(recipeService: RecipeService, recipes: [Recipe]) {
        self.recipes = recipes
        self.allRecipes = recipes
        self.recipeService = recipeService

        $searchText
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .sink { [weak self] searchText in
                self?.filterRecipes()
            }
            .store(in: &cancellables)
    }

    func loadRecipes() {
        recipeService.getRecipes()
            .sink { [weak self] completion in
                switch completion {
                case .finished:
                    print("closing loader")
                    self?.showLoader = false
                case .failure(let error):
                    print("Error loading recipes: \(error)")
                }
            } receiveValue: { [weak self] (recipes: [Recipe]) in
                self?.allRecipes = recipes
                self?.filteredRecipes = recipes
            }
            .store(in: &cancellables)
    }

    func filterBySearch(recipe: Recipe) -> Bool {
        guard searchText.isNotEmpty else {
            return true
        }

        return recipe.containsValue(searchText)
    }

    func filterBySelection(recipe: Recipe) -> Bool {
        guard filters.isNotEmpty else {
            return true
        }

        var contains = true
        filters.forEach { filter in
            if !recipe.containsValue(filter) {
                contains = false
                return
            }

        }

        return contains
    }

    func filterRecipes() {
        filteredRecipes = allRecipes.filter { recipe in
            return filterBySelection(recipe: recipe) && filterBySearch(recipe: recipe)
        }
    }

    deinit {
        cancellables.forEach { cancellable in
            cancellable.cancel()
        }
    }
}

fileprivate extension Array {
    var isNotEmpty: Bool {
        return !self.isEmpty
    }
}

fileprivate extension String {
    var isNotEmpty: Bool {
        return !self.isEmpty
    }
}
