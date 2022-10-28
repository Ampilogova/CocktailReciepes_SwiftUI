//
//  CocktailView.swift
//  CocktailRecipes
//
//  Created by Tatiana Ampilogova on 10/26/22.
//

import SwiftUI

struct CocktailView: View {
    
    let item: Cocktail
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                AsyncImage(url: item.strDrinkThumb) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 150)
                Text(item.strDrink ?? "")
                    
                    .font(.system(.headline))
            }
            Text("Recipe: \(item.strInstructions ?? "")")
        }
    }
}

struct CocktailView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailView(item: Cocktail.dummyData.first!)
    }
}
