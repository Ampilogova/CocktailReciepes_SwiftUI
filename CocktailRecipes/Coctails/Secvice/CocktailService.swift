//
//  CocktailService.swift
//  CocktailRecipes
//
//  Created by Tatiana Ampilogova on 10/24/22.
//

import Foundation

protocol CocktailService {
    func loadCocktail() async throws -> [Cocktail]
}

class CocktailServiceImpl: CocktailService, ObservableObject {
    
    private let strURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    
    func loadCocktail() async throws -> [Cocktail] {
        guard let url = URL(string: strURL) else {
            fatalError("Missing URL")
        }
        let ulrSession = URLSession.shared
        let (data,_) = try await ulrSession.data(from: url)
        let drinks = try JSONDecoder().decode(Drinks.self, from: data)
        return drinks.drinks ?? []
    }
}
