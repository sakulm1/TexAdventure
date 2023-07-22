//
//  FightView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 22.07.23.
//

import SwiftUI

struct HealthBar: View {
    var life: Int
    var body: some View {
        GeometryReader { geometry in
            getBar(width: geometry.size.width)
        }
        .frame(height: 20)
        .padding(.all)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(45)
    }

    func getBar(width: CGFloat) -> some View {
        let lifePercentage = CGFloat(life) / 100.0
        let lifeWidth = width * lifePercentage
        return AnyView(
            Rectangle()
                .fill(Color.red)
                .frame(width: lifeWidth)
        )
    }
}

struct HealthBar_Previews: PreviewProvider {
    static var previews: some View {
        HealthBar(life: 75)
    }
}
