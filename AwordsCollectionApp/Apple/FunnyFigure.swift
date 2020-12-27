//
//  FunnyFigure.swift
//  AwordsCollectionApp
//
//  Created by Artur Gedakyan on 27.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct FunnyFigure: View {
    static let rotationCount = 8

    var badgeSymbols: some View {
        ForEach(0..<38) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(Badge.rotationCount)) * 75.0
            )
        }
        .opacity(0.4)
    }

    var body: some View {
        ZStack {
            BadgeBackground()

            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct FunnyFigure_Previews: PreviewProvider {
    static var previews: some View {
        FunnyFigure()
    }
}
