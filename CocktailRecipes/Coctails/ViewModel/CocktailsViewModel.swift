//
//  CocktailsViewModel.swift
//  CocktailRecipes
//
//  Created by Tatiana Ampilogova on 10/26/22.
//

import Foundation

protocol CocktailsViewModel: ObservableObject {
    func loadCocktail() async
}

@MainActor
final class CocktailsViewModelImpl: CocktailsViewModel {
    
    @Published private(set) var cocktails: [Cocktail] = []
    private let service: CocktailService
    
    init(_ service: CocktailService) {
        self.service = service
    }
    
    func loadCocktail() async {
        do {
            self.cocktails = try await service.loadCocktail()
        } catch {
            print(error)
        }
    }
}
