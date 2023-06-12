//
//  Hearts.swift
//  TextAdventure
//
//  Created by Lukas Maile on 12.06.23.
//

import SwiftUI

struct Hearts: View {
    var body: some View {
        VStack{
            //halfHearts(winkel: 0)
            HStack{
                fullHeart()
                fullHeart()
                fullHeart()
                fullHeart()
                
            }
            .scaleEffect(0.5)
            .background(.white)
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}

struct halfHearts: View {
    var turn: Bool
    var body: some View {
        ZStack{
            Triangle()
                .fill(.red)
                .frame(width: 40, height: 30)
                .rotationEffect(Angle(degrees: 90))
            Circle()
                .frame(width: 34.8)
                .offset(x: -16, y: -11.4)
                .foregroundColor(.red)
                .padding(.trailing, -200)
        }.scaleEffect(x: turn ? -1: 1, y: 1) // Horizontale Spiegelung
       
    }
}

struct fullHeart: View{
    var body: some View{
        ZStack{
            halfHearts(turn: false)
                .offset(x: 29.5)
            halfHearts(turn: true)
        }.padding()
            
        
    }
}

struct Hearts_Previews: PreviewProvider {
    static var previews: some View {
        Hearts()
    }
}

struct halfHearts_Previews: PreviewProvider {
    static var previews: some View {
        halfHearts(turn: true)
    }
}
