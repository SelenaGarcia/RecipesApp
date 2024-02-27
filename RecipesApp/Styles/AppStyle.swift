//
//  AppStyle.swift
//  RecipesApp
//
//  Created by Selena García Lobo on 26/02/2024.
//

import SwiftUI

struct AppStyle {

    struct SearchBar: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.subheadline)
                .foregroundStyle(.white)
                .padding()
                .background(ColorSet.secondaryColor)
                .clipShape(.rect())
        }
    }
    struct Background: ViewModifier {
        func body(content: Content) -> some View {
            content
                .background(.white)
        }
    }
    struct Title: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.title)
                .foregroundColor(.white)
        }
    }
    struct TextList: ViewModifier {
        func body(content: Content) -> some View {
            content
                .background(.white)
                .opacity(0.9)
                .foregroundColor(ColorSet.secondaryColor)
                .listRowSeparatorTint(ColorSet.accentColor)
        }
    }

}

extension View {
    func searchBar() -> some View {
        modifier(AppStyle.SearchBar())
    }
    func background() -> some View {
        modifier(AppStyle.Background())
    }
    func title() -> some View {
        modifier(AppStyle.Title())
    }
    func textList() -> some View {
        modifier(AppStyle.TextList())
    }
}
