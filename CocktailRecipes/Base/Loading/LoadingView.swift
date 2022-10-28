//
//  LoadingView.swift
//  CocktailRecipes
//
//  Created by Tatiana Ampilogova on 10/26/22.
//

import SwiftUI

struct LoadingView: View {
    let text: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Loading...")
    }
}
