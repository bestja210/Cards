//
//  HomeView.swift
//  Cards
//
//  Created by Jacob Best on 2/13/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var deckSearch = ""
    
    var body: some View {
        VStack{
            /*Text("Welcome \(user)")
                .font(.title)
                .bold()
                .padding()*/
            HStack {
                VStack {
                    Text("Created Decks: ")
                        .font(.title2)
                        .bold()
                        .padding()
                }
                Spacer()
            }
            Spacer()
        }
        .background(CustomColors.backgroundColor)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
