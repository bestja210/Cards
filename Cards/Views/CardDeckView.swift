//
//  CardDeckView.swift
//  Cards
//
//  Created by Jacob Best on 2/13/23.
//

import SwiftUI

struct CardDeckView: View {
    var cards: [Card]
    
    var body: some View {
        TabView {
            ForEach(cards) { card in
                CardView(card: card)
            }
        }
        .tabViewStyle(.page)
        .background(CustomColors.backgroundColor)
    }
}

struct CardDeckView_Previews: PreviewProvider {
    static let cards = [
        Card(front: "What is 7 + 7?", back: "14"),
        Card(front: "What is the airspeed velocity of an unladen swallow?", back: "African or European?"),
        Card(front: "From what is cognac made?", back: "Grapes"),
    ]
    static var previews: some View {
        CardDeckView(cards: cards)
    }
}
