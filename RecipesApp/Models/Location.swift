//
//  Location.swift
//  RecipesApp
//
//  Created by Selena García Lobo on 20/02/2024.
//

import Foundation
import MapKit

struct Location: Decodable {
    let lat: Double
    let lng: Double

    var coordinate: CLLocationCoordinate2D { CLLocationCoordinate2D(
        latitude: lat,
        longitude: lng
    )}
}
