//
//  DetailView.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI

struct DetailView: View {
    let recipe: Recipe
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                RemoteImage(url: recipe.image)
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .clipped()
                Text(recipe.name)
                    .font(.title)
                    .padding()

                Text(recipe.description)
                    .padding()

                NavigationLink(destination: MapView(recipe: recipe)) {
                    Text("Ver en el mapa")
                        .foregroundColor(.blue)
                        .padding()
                }

            }
            .padding()
        }
        .navigationBarTitle("Detalles de la receta", displayMode: .inline)
    }
}

