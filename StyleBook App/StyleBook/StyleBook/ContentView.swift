//
//  ContentView.swift
//  StyleBook
//
//  Created by Emily Luo on 11/30/23.
//

// ContentView.swift

import SwiftUI

// Model to represent each item in the closet
struct ClosetItem: Identifiable {
    var id = UUID()
    var category: String
    var image: Image
}

// ViewModel to manage closet items
class ClosetViewModel: ObservableObject {
    @Published var closetItems: [ClosetItem] = []

    // Function to add a new item to the closet
    func addItem(category: String, imageName: String) {
        guard let image = UIImage(named: imageName) else { return }
        let swiftUIImage = Image(uiImage: image)
        let newItem = ClosetItem(category: category, image: swiftUIImage)
        closetItems.append(newItem)
    }

    // Function to remove an item from the closet
    func removeItem(indexSet: IndexSet) {
        closetItems.remove(atOffsets: indexSet)
    }
}

// ContentView displaying the closet and allowing users to upload items
struct ContentView: View {
    @EnvironmentObject private var viewModel: ClosetViewModel
    @State private var selectedCategory: String = "Tops"
    @State private var selectedImageName: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Picker("Select Category", selection: $selectedCategory) {
                    Text("Tops").tag("Tops")
                    Text("Bottoms").tag("Bottoms")
                    Text("Shoes").tag("Shoes")
                    Text("Accessories").tag("Accessories")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                TextField("Image Name", text: $selectedImageName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Add Item") {
                    viewModel.addItem(category: selectedCategory, imageName: selectedImageName)
                    selectedImageName = ""
                }
                .padding()

                List {
                    ForEach(viewModel.closetItems) { item in
                        ClosetItemView(item: item)
                    }
                    .onDelete { indexSet in
                        viewModel.removeItem(indexSet: indexSet)
                    }
                }
            }
            .navigationTitle("StyleBook")
        }
    }
}

// View for displaying each item in the closet
struct ClosetItemView: View {
    var item: ClosetItem

    var body: some View {
        HStack {
            item.image
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text(item.category)
        }
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItems: [ClosetItem] = [
            ClosetItem(category: "Tops", image: Image("toteme_coat")),
            ClosetItem(category: "Bottoms", image: Image("whitepants")),
            ClosetItem(category: "Shoes", image: Image("nike_sneakers")),
            ClosetItem(category: "Accessories", image: Image("bottega_bag")),
        ]

        let viewModel = ClosetViewModel()
        viewModel.closetItems = sampleItems

        return ContentView()
            .environmentObject(viewModel)
    }
}
