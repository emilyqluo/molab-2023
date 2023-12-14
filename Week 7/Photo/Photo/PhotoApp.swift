//
//  PhotoApp.swift
//  Photo
//
//  Created by Emily Luo on 12/8/23.
//

import SwiftUI

struct ImagePicker: View {
    @Binding var selectedPhotos: [Photo]
    @State private var selectedImage: UIImage?
    @State private var isImagePickerPresented = false

    var body: some View {
        VStack {
            // Select Photos Button
            Button("Select Photos") {
                isImagePickerPresented = true
            }
            .padding()

            // Selected Photos
            ScrollView {
                HStack {
                    ForEach(selectedPhotos) { photo in
                        Image(uiImage: photo.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
            }
        }
        .imagePicker(isPresented: $isImagePickerPresented, image: $selectedImage) {
            if let selectedImage = selectedImage {
                selectedPhotos.append(Photo(image: selectedImage))
            }
        }
    }
}
