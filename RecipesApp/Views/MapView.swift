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
                center: CLLocationCoordinate2D(
                    latitude: recipe.location.lat,
                    longitude: recipe.location.lng
                ),
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
        )
        )
        .navigationTitle("Ubicación de \(recipe.name)")
    }
}

