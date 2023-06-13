//
//  TextView.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    @State var life: Int
    @State private var tab = false
    @State private var time: Int = 5
    
    var body: some View {
        VStack{
            Spacer()
            ScrollView{
                Text(story.pages[pageIndex].text)
                    .fontWeight(.bold)
            }
            
            //---------------Test-------------
            Stepper("\(life)", value: $life, in: 0...10)
                    .padding(.bottom)
            
            Button("life - 5"){
                reduceLife(number: 5)
            }
            //--------------------------------
            
            HStack {
                Spacer()
                NavigationLink(destination: HomeView()){
                    Image(systemName: "xmark.circle")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.red)
                }
                
                Hearts(life: life)
                        .scaleEffect(0.6)
                        .offset(x: -20)
                
                Text(String(time) + " s")
                    .font(.title)
                
                Spacer()
                
            }.padding()
                
            ForEach(story.pages[pageIndex].choices, id: \choice.text){choice in
                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination, life: life)){
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
    func reduceLife(number: Int){
        if (life - number <= 0){
            life = 0
        }else{
            life = life - number
        }
    }
    
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0, life: 8)
    }
}
