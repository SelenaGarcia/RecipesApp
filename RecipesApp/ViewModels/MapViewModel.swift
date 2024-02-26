//
//  MapViewModel.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI
import MapKit

class MapViewModel: ObservableObject {
    @Published var region: MKCoordinateRegion

    init(recipe: Recipe) {
        let centerCoordinate = CLLocationCoordinate2D(
            latitude: recipe.location.lat,
            longitude: recipe.location.lng
        )

        self.region = MKCoordinateRegion(
            center: centerCoordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
}
