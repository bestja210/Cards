//
//  CreateCardView.swift
//  Cards
//
//  Created by Jacob Best on 2/13/23.
//

import SwiftUI

struct CreateCardView: View {
    @Environment(\.dismiss) var dismiss: DismissAction
    
    @State var front = ""
    @State var back = ""
    
    var onCreate: (Card) -> Void
    var isValid: Bool {
        !front.isEmpty && !back.isEmpty
    }
    
    enum Field: Hashable {
        case front
        case back
    }
    @FocusState var focusedField: Field?
    
    var body: some View {
        Form {
            Section {
                TextField("Front", text: $front)
                    .focused($focusedField, equals: .front)
                TextField("Back", text: $back)
                    .focused($focusedField, equals: .back)
            } header: {
                Text("Card Details")
            }
            Section {
                Button("Create") {
                    createCard()
                }
                .disabled(!isValid)
                Button("Cancel") {
                    dismiss()
                }
            }
        }
        .onSubmit {
            if front.isEmpty {
                focusedField = .front
            } else if back.isEmpty {
                focusedField = .back
            } else {
                createCard()
            }
        }
    }
    
    func createCard() {
        guard isValid else { return }
        
        let card = Card(front: front,
                        back: back)
        onCreate(card)
        dismiss()
    }
}

struct CreateCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreateCardView(onCreate: { _ in })
    }
}
