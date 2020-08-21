//
//  CGSize+Random.swift
//  HeroAnimations
//
//  Created by Johnny on 21.08.2020.
//

import SwiftUI

extension CGSize {
    static func random(width: ClosedRange<CGFloat>, height: ClosedRange<CGFloat>) -> CGSize {
        return CGSize(width: CGFloat.random(in: width), height: CGFloat.random(in: height))
    }
    
    static func random(in range: ClosedRange<CGFloat>) -> CGSize {
        return CGSize(width: CGFloat.random(in: range), height: CGFloat.random(in: range))
    }
}
