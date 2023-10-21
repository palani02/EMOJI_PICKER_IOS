//
//  ContentView.swift
//  EmojiPicker
//
//  Created by Palani on 21/10/23.
//

import SwiftUI

// Make enum to store different type of case value.
enum Emoji:String,CaseIterable{
    case 👻,👽,🤪,🤟🏻,🥷🏻,🤖,😵,🥶,😎,🤫,👾,😼
}

struct ContentView: View {
    // use state anotation. Because i need to change
    // character every time
    @State var Selection:Emoji = .👾
    var body: some View {
        NavigationView{
            VStack {
                Text(Selection.rawValue)
                    .font(.system(size: 200))
                
                Picker("Choose the Emoji to Display", selection:$Selection){
                    // anotation = $
                    ForEach(Emoji.allCases,id:\.self){
                        // id should be unique. So i give their value itself
                        Emoji in Text(Emoji.rawValue)
                    }
                }
                .pickerStyle(.wheel)
            }
            .padding()
            .navigationTitle("Emoji Picker !!!")
        }
    }
}

#Preview {
    ContentView()
}
