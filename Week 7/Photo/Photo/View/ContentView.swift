//
//  ContentView.swift
//  Photo
//
//  Created by Emily Luo on 12/8/23.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    @State private var collections: [Collection] = []
    @State private var selectedCollection: Collection?
    @State private var selectedPhotos: [Photo] = []
    @State private var isShowingImagePicker = false

    var body: some View {
        NavigationView {
            VStack {
                // Collections List
                List {
                    ForEach(collections) { collection in
                        NavigationLink(destination: CollectionDetailView(collection: collection, onDelete: {
                            collections.removeAll { $0.id == collection.id }
                        })) {
                            Text(collection.name)
                        }
                    }
                }
                .listStyle(InsetListStyle())

                // Buttons
                HStack {
                    AddCollectionButtonView(collections: $collections)
                    CreateCollageButtonView(selectedPhotos: $selectedPhotos, isShowingImagePicker: $isShowingImagePicker)
                }
                .padding()
            }
            .navigationBarTitle("Photo Collections")
        }
    }
}
