//
//  TextView.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import SwiftUI

struct StoryViewPage: View {
    
    let story: Story
    let pageIndex: Int
    
    @State private var tab = false
    
    var body: some View {
        VStack{
            Spacer()
            ScrollView{
                Text(story.pages[pageIndex].text)
                    .fontWeight(.bold)
            }
            NavigationLink(destination: HomeView()){
                Image(systemName: "xmark.circle")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.red)
            }
                
            ForEach(story.pages[pageIndex].choices, id: \choice.text){choice in
                NavigationLink(destination: StoryViewPage(story: story, pageIndex: choice.destination)){
                    Text(choice.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .opacity(1)
                    .cornerRadius(10.1)
                }.navigationBarBackButtonHidden(true)
            }
           
        }
        .padding()
        
    }
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        StoryViewPage(story: story, pageIndex: 0)
    }
}
