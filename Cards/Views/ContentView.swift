//
//  ContentView.swift
//  Cards
//
//  Created by Jacob Best on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var cards: [Card] = [
            Card(front: "What is 7+7?", back: "14"),
            Card(front: "What is the airspeed velocity of an unladen swallow?", back: "African or European?"),
            Card(front: "From what is cognac made?", back: "Grapes"),
    ]
    @State var isShowingCreateCardView = false
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            CardDeckView(cards: cards)
            Button {
                isShowingCreateCardView = true
            } label: {
                Image(systemName: "plus")
                    .font(.title2)
                    .bold()
                    .padding()
                    .background(CustomColors.backgroundColor)
                    .foregroundColor(CustomColors.cardColor)
                    .clipShape(Circle())
            }
            .padding([.top, .trailing])
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        }
        .sheet(isPresented: $isShowingCreateCardView) {
            CreateCardView(onCreate: { card in
                cards.append(card)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
