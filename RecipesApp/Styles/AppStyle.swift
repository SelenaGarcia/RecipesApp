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
                .font(CustomFont.titleFont)
                .foregroundColor(ColorSet.secondaryColor)
                .padding()
        }
    }
    struct Link: ViewModifier {
        func body(content: Content) -> some View {
            content
                .foregroundColor(ColorSet.secondaryColor)
                .underline()
                .padding()
        }
    }
    struct TextList: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(CustomFont.textFont)
                .background(.white)
                .opacity(0.9)
                .foregroundColor(ColorSet.secondaryColor)
                .listRowSeparatorTint(ColorSet.accentColor)
                
        }
    }
    struct RemoteImageStyle: ViewModifier {
        func body(content: Content) -> some View {
            content
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .clipped()
                .border(ColorSet.primaryColor, width: 10)
                .cornerRadius(10)
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
    func link() -> some View {
        modifier(AppStyle.Link())
    }
    func remoteImageStyle() -> some View {
        modifier(AppStyle.RemoteImageStyle())
    }
}
