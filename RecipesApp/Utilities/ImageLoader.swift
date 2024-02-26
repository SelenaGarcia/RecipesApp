//
//  ImageLoader.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    @Published var image: Image?

    private var cancellables: Set<AnyCancellable> = []

    func load(url: URL) {
        let cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] uiImage in
                if let uiImage = uiImage {
                    self?.image = Image(uiImage: uiImage)
                }
            }

        cancellable.store(in: &cancellables)
    }

    func cancel() {
        cancellables.forEach { $0.cancel() }
        cancellables.removeAll()
    }
}
