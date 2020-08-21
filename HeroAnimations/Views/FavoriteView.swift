//
//  FavoriteView.swift
//  HeroAnimations
//
//  Created by Johnny on 21.08.2020.
//

import SwiftUI

struct FavoriteView : View {
    let image: String
    
    var pct: CGFloat
    var body: some View {
        EmptyView().modifier(FavoriteMod(image: image, pct: pct))
    }
}

struct FavoriteMod: AnimatableModifier {
    @Environment(\.favRadiusPct) var favRadiusPct: CGFloat
    @Environment(\.favShadow) var favShadow : CGFloat
    @Environment(\.gridRadiusPct) var gridRadiusPct: CGFloat
    @Environment(\.gridShadow) var gridShadow: CGFloat
    
    let image: String
    var pct: CGFloat
    
    var animatableData: CGFloat {
        get { pct }
        set { pct = newValue }
    }
    
    func body(content: Content) -> some View {
        let radiusPerenct = (favRadiusPct - gridRadiusPct) * pct + gridShadow
        
        let shadow = (favShadow - gridShadow) * pct + gridShadow
        
        return Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RectangleToCircle(cornerRadiusPercent: radiusPerenct))
            .overlay(RectangleToCircle(cornerRadiusPercent: radiusPerenct).stroke(Color.white, lineWidth: 2 * pct))
            .padding(2 * pct)
            .overlay(RectangleToCircle(cornerRadiusPercent: radiusPerenct).strokeBorder(Color.black.opacity(0.1 * Double(pct))))
            .shadow(radius: shadow)
            .padding(4 * pct)
    }
}
