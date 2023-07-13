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
                switch story.pages[pageIndex]{
                case .storyPage(let page):
                    Text(page.text)
                        .fontWeight(.bold)
                case .fightPage(_):
                    Text("error")
                }
                
            }
            
            //---------------Test-------------
            Stepper("\(life)", value: $life, in: 0...16)
                .padding(.bottom)
            //
            //            Button("life - 5"){
            //                reduceLife(number: 5)
            //            }
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
            switch story.pages[pageIndex]{
            case .storyPage(let page):
                ForEach(page.choices, id: \Choice.text){choice in
                    NavigationLink(destination: GameView(story: story, pageIndex: choice.destination, life: life)){
                        Text(choice.text)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .opacity(1)
                            .cornerRadius(10.1)
                    }.navigationBarBackButtonHidden(true)
                }
            case .fightPage(_):
                Text("foo")
            
        }

        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                NavigationLink(destination: InventoryView(inventory: inventar)) {
                    Image(systemName: "backpack")
                        .scaleEffect(1.2)
                        .foregroundColor(Color.yellow)
                }
            }
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "map")
                    .scaleEffect(1.2)
                    .foregroundColor(Color.green)
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
