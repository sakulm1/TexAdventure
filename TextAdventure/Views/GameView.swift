//
//  GameView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.07.23.
//

import SwiftUI

struct GameView: View {
    
    let story: Story
    let pageIndex: Int
    @State var life: Int

    var body: some View {
        switch story.pages[pageIndex]{
        case .storyPage(_):
            StoryPageView(story: story, pageIndex: pageIndex, life: life)
        case .fightPage(let fightpage):
            FightView(afterWin: fightpage.nextPageIfWon, life: life)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(story: story, pageIndex: 0, life: 8)
    }
}
