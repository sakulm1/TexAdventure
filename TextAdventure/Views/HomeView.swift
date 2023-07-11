//
//  HomeView.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
        VStack{
            Spacer()
            Text("Text Adventure Game")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
        
            NavigationLink(destination: StoryView()) {
                Text("New Game")
                        .frame(width: 140)
                        .controlSize(.large)
                        .padding()
                        .background(Capsule().foregroundColor(.blue))
                        .foregroundColor(.white)
                }
            
            Text("Resume Game")
                .frame(width: 140)
                .controlSize(.large)
                .padding()
                .background(Capsule().foregroundColor(.blue))
                .foregroundColor(.white)
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
