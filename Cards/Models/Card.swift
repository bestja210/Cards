//
//  Card.swift
//  Cards
//
//  Created by Jacob Best on 2/10/23.
//

import Foundation


struct Card: Identifiable {
    var front: String
    var back: String
    var id = UUID()
}
