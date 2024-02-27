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
                    .remoteImageStyle()
                Text(recipe.name)
                    .title()

                Text(recipe.description)
                    .padding()

                NavigationLink(destination: MapView(recipe: recipe)) {
                    Text("Ver en el mapa")
                        .link()
                }

            }
            .padding()
        }
        .navigationBarTitle("Detalles de la receta", displayMode: .inline)
    }
}

