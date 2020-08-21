//
//  StarView.swift
//  HeroAnimations
//
//  Created by Johnny on 21.08.2020.
//

import SwiftUI

struct StarView: View {
    let isFavorite: Bool
    
    var body: some View {
        if isFavorite {
            Image(systemName: "star.fill")
                .shadow(radius: 3)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(20)
        }
    }
}
