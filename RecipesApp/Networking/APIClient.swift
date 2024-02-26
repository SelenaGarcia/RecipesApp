//
//  APIClient.swift
//  RecipeApp
//
//  Created by Selena García Lobo on 19/02/2024.
//
// 6e00cbcc-81b8-45a6-ac3e-211148602be0

import Foundation
import Alamofire
import Combine

class APIClient {
    static let shared = APIClient()
    private let baseURL = URL(string: "https://run.mocky.io/v3/")!
    
    //https: //run.mocky.io/v3/ade3ba23-27eb-4432-814f-b50665a4d059
    func getRecipes() -> AnyPublisher<[Recipe], Error> {
        let endpoint = baseURL.appendingPathComponent("ade3ba23-27eb-4432-814f-b50665a4d059")

        print(endpoint)

        return AF.request(endpoint)
            .publishDecodable(type: RecipeResponseDTO.self, decoder: JSONDecoder())
            .tryMap { response in
                print(response)
                guard let responseObject = response.value else {
                    throw AFError.responseValidationFailed(reason: .dataFileNil)
                }
                return responseObject.recipes
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}


