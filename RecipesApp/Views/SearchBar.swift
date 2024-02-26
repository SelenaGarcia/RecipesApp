//
//  SearchBar.swift
//  RecipesApp
//
//  Created by Selena García Lobo on 20/02/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var filters: [String]
    var onFilterAdd: ((String) -> Void)
    var onFilterRemove: ((String) -> Void)

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TextField("Buscar recetas", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(8)
                .onSubmit {
                    onFilterAdd(searchText)
                }

            Text("Filtros:")
                .font(.caption)
                .foregroundColor(.secondary)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(filters, id: \.self) { filter in
                        Button(action: {
                            onFilterRemove(filter)
                        }) {
                            HStack {
                                Text(filter)
                                    .foregroundColor(.blue)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))

                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        onFilterRemove(filter)
                                    }
                            }
                        }
                    }
                }
                .padding(.horizontal, 8)
            }
        }
        .background(Color.secondary.opacity(0.2))
        .cornerRadius(10)
        .padding(8)
    }
}
