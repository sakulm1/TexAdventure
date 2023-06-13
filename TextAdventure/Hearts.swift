//
//  Hearts.swift
//  TextAdventure
//
//  Created by Lukas Maile on 12.06.23.
//

import SwiftUI

struct Hearts: View {
    var life: Int
    var body: some View {
        VStack{
            HStack{
                getLifes()
            }
            .scaleEffect(0.5)
            .frame(maxWidth: 180, alignment: .center)
        }
    }
    
    func getLifes() -> some View {
        let lifeCount: Int = life / 2
        if life == 0 {
            return AnyView(
                HStack {
                    Text("☠️")
                }.scaleEffect(5)
                
            )
        }else if life % 2 == 0 {
            return AnyView(
                HStack {
                    ForEach(0 ..< lifeCount) { value in
                        if value < 4 {
                            fullHeart(extraLife: false, half: false)
                        }else{
                            fullHeart(extraLife: true, half: false)
                        }
                    }
                }
                )
        }else{
            return AnyView(
                HStack {
                    ForEach(0 ..< lifeCount) { value in
                        if value < 4 {
                            fullHeart(extraLife: false, half: false)
                        }else{
                            fullHeart(extraLife: true, half: false)
                        }
                    }
                    if life < 8 {
                        fullHeart(extraLife: false, half: true)
                    }else{
                        fullHeart(extraLife: true, half: true)
                    }
                }
            )
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
    
    struct halfHeart: View {
        var turn: Bool
        var color: Color
        var body: some View {
            ZStack{
                Triangle()
                    .fill(color)
                    .frame(width: 40, height: 30)
                    .rotationEffect(Angle(degrees: 90))
                Circle()
                    .frame(width: 34.8)
                    .offset(x: -16, y: -11.4)
                    .foregroundColor(color)
                    .padding(.trailing, -200)
            }.scaleEffect(x: turn ? -1 : 1, y: 1) // Horizontale Spiegelung
            
        }
    }
    
    struct fullHeart: View{
        var extraLife: Bool
        var half: Bool
        var body: some View{
            ZStack{
                halfHeart(turn: false, color: half ? .white : extraLife ? .yellow : .red) //zweite hälfte
                    .offset(x: 29.5)
                halfHeart(turn: true, color: extraLife ? .yellow : .red) //erste hälfte
            }.padding()
            
        }
    }
    
    struct Hearts_Previews: PreviewProvider {
        static var previews: some View {
            Hearts(life: 11)
        }
    }
    
    struct halfHearts_Previews: PreviewProvider {
        static var previews: some View {
            halfHeart(turn: true, color: .red)
        }
    }
    
    struct FullHearts_Previews: PreviewProvider {
        static var previews: some View {
            fullHeart(extraLife: false, half: false)
        }
    }
}
