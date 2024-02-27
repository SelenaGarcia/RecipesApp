//
//  RemoteImage.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//

import SwiftUI

struct RemoteImage: View {
    private let url: URL
    @StateObject private var imageLoader = ImageLoader()

    init(url: URL) {
        self.url = url
    }

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 200, height: 200)
                .cornerRadius(20)
            imageLoader.image?
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        .onAppear {
            imageLoader.load(url: url)
        }
        .onDisappear {
            imageLoader.cancel()
        }
    }
}


