//
//  StoryView.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import SwiftUI

struct StoryView: View {

    @State var HauptCharakter = MainCharacter(life: 8, name: "Test", effect: Effect(name:"TestEffect"), strenght: 1)
    //@State var life: Int = 8
    var body: some View {
        
        StoryPageView(story: story, pageIndex: 0, life: HauptCharakter.life)
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
