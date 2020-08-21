//
//  RectangleToCircle.swift
//  HeroAnimations
//
//  Created by Johnny on 21.08.2020.
//

import SwiftUI

struct RectangleToCircle: InsettableShape {
    var cornerRadiusPercent: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path(roundedRect: rect, cornerSize: CGSize(width: (rect.width / 2.0) * cornerRadiusPercent, height: (rect.height / 2.0) * cornerRadiusPercent))
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        return SquareToCircle_Inset(base: self, amount: amount)
    }
    
    struct SquareToCircle_Inset : InsettableShape {
        var base: RectangleToCircle
        
        var amount: CGFloat
        
        func path(in rect: CGRect) -> Path {
            RectangleToCircle(cornerRadiusPercent: base.cornerRadiusPercent).path(in: rect.insetBy(dx: amount, dy: amount))
        }
        
        func inset(by amount: CGFloat) -> some InsettableShape {
            var copy = self
            copy.amount += amount
            return copy
        }
    }
}
