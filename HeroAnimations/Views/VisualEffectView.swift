//
//  VisualEffectView.swift
//  HeroAnimations
//
//  Created by Johnny on 21.08.2020.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var uiVisualEffect: UIVisualEffect?
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        UIVisualEffectView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.effect = uiVisualEffect
    }
}
