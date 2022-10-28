//
//  CoctailRecipes.swift
//  CocktailRecipes
//
//  Created by Tatiana Ampilogova on 10/26/22.
//

import SwiftUI

struct CoctailRecipes: View {
    
    @StateObject private var viewModel = CocktailsViewModelImpl(CocktailServiceImpl())
    
    var body: some View {
        
        Group {
            if viewModel.cocktails.isEmpty {
                LoadingView(text: "Loading cocktails")
            } else {
                List {
                    ForEach(viewModel.cocktails, id: \.strDrink) { item in
                        CocktailView(item: item)
                    }
                }
            }
        }
        .task {
            await viewModel.loadCocktail()
        }
    }
}

struct CoctailRecipes_Previews: PreviewProvider {
    static var previews: some View {
        CoctailRecipes()
    }
}
