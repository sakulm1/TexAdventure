//
//  StoryView.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import SwiftUI

struct StoryView: View {
    @State var life: Int = 8
    var body: some View {
        
        StoryPageView(story: story, pageIndex: 0, life: life)
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
