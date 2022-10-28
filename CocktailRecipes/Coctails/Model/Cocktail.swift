//
//  Cocktail.swift
//  CocktailRecipes
//
//  Created by Tatiana Ampilogova on 10/24/22.
//

import Foundation
import SwiftUI

struct Cocktail: Codable {
    var strDrink: String?
    var strInstructions: String?
    var strDrinkThumb: URL?
    
    init(_ strDrink: String, _ strInstructions: String, _ strDrinkThumb: URL) {
        self.strDrink = strDrink
        self.strInstructions = strInstructions
        self.strDrinkThumb = strDrinkThumb
    }
}

struct Drinks: Codable {
    var drinks: [Cocktail]?
}

extension Cocktail {
    static let dummyData: [Cocktail] = [
        Cocktail("Margarita", "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.", URL(string: "https://www.thecocktaildb.com/images/media/drink/tqyrpw1439905311.jpg")!)
    ]
}
