//
//  ContentView.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//
import SwiftUI
import CoreLocation

struct Recipe: Identifiable, Decodable {
    var id: String
    let name: String
    let image: URL
    let description: String
    let ingredients: [String]
    let location: Location

    func containsValue(_ string: String) -> Bool {
        ingredients.contains(where: { $0.localizedCaseInsensitiveContains(string) }) || name.localizedCaseInsensitiveContains(string)

    }
}
