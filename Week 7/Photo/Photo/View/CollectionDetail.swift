//
//  CollectionDetail.swift
//  Photo
//
//  Created by Emily Luo on 12/8/23.
//

import SwiftUI

struct CollectionDetailView: View {
    var collection: Collection
    var onDelete: () -> Void

    var body: some View {
        VStack {
            // Collection Photos
            List {
                ForEach(collection.photos) { photo in
                    Image(uiImage: photo.image)
                        .resizable()
                        .scaledToFit()
                }
                .listStyle(InsetListStyle())
            }

            // Delete Collection Button
            Button("Delete Collection") {
                onDelete()
            }
            .padding()
        }
        .navigationBarTitle(collection.name)
    }
}
