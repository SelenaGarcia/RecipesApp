//
//  MapView.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    let recipe: Recipe

    var body: some View {
        Map(coordinateRegion: .constant(
            MKCoordinateRegion(
                center: recipe.location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )),
            annotationItems: [recipe]
        ) { recipe in
            MapMarker(coordinate: recipe.location.coordinate,
                      tint: Color.brown)
        }

        .navigationTitle("Ubicación de \(recipe.name)")
    }
}

