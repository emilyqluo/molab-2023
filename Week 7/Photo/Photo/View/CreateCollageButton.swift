//
//  CreateCollageButton.swift
//  Photo
//
//  Created by Emily Luo on 12/8/23.
//

import SwiftUI

struct CreateCollageButtonView: View {
    @Binding var selectedPhotos: [Photo]
    @Binding var isShowingImagePicker: Bool

    var body: some View {
        Button("Create Collage") {
            selectedPhotos = selectedCollection?.photos ?? []
            isShowingImagePicker = true
        }
    }
}
