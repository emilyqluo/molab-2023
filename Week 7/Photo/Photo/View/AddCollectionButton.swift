//
//  AddCollectionButton.swift
//  Photo
//
//  Created by Emily Luo on 12/8/23.
//

import SwiftUI

struct AddCollectionButtonView: View {
    @Binding var collections: [Collection]

    var body: some View {
        Button("Add Collection") {
            collections.append(Collection(name: "New Collection", photos: []))
        }
    }
}
