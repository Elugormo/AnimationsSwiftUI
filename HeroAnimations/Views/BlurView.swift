//
//  BlurView.swift
//  HeroAnimations
//
//  Created by Johnny on 21.08.2020.
//

import SwiftUI

struct BlurView: View {
    @Environment(\.colorScheme) var scheme
    
    var active: Bool
    
    var onTap: () -> ()
    
    
    var body: some View {
        if active {
            VisualEffectView(uiVisualEffect: UIBlurEffect(style: scheme == .dark ? .dark : .light))
                .edgesIgnoringSafeArea(.all)
                .onTapGesture(perform: self.onTap)
        }
    }
}

