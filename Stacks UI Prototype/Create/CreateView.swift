//
//  CreateView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/29/24.
//

import SwiftUI
import PhotosUI

struct CreateView: View {
    @State private var titleText: String = ""
    @State private var bodyText: String = ""
    @State private var selectedImage: UIImage? = nil
    @State private var isPhotoPickerPresented = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Button(action: {}) {
                        Text("Post")
                            .bold()
                            .foregroundColor(.white)
                            .padding(.vertical, 7.5)
                            .padding(.horizontal, 20)
                            .background(Color.black.opacity(0.8))
                            .cornerRadius(20)
                    }
                }
                .padding()
                
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $titleText)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.vertical, 12)
                        .cornerRadius(8)
                        .onChange(of: titleText) { newValue in
                            titleText = String(newValue.prefix(50))
                        }
                    
                    if titleText.isEmpty {
                        Text("Enter a title here.")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.vertical, 20)
                            .padding(.horizontal, 4)
                    }
                }
                .padding(.horizontal, 20)
                .frame(maxHeight: 80)
                
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $bodyText)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(8)
                        .onChange(of: bodyText) { newValue in
                            bodyText = String(newValue.prefix(280))
                        }
                    if bodyText.isEmpty {
                        Text("Enter text here.")
                            .foregroundColor(.gray)
                            .padding(.leading, 4)
                            .padding(.top, 8)
                    }
                }
                .padding(.horizontal, 20)
                
                PhotoGridView(selectedImage: $selectedImage, isPhotoPickerPresented: $isPhotoPickerPresented)
                
                Divider()
                
                HStack {
                    Button(action: {}) {
                        Image(systemName: "speaker.wave.2.fill")
                    }
                    .padding(.horizontal, 5)
                    Button(action: {}) {
                        Image(systemName: "photo")
                    }
                    .padding(.horizontal, 5)
                    Button(action: {}) {
                        Text("GIF")
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal, 5)
                    Button(action: {}) {
                        Image(systemName: "checklist")
                    }
                    .padding(.horizontal, 5)
                    Spacer()
                    Text("1/1")
                        .padding(.horizontal, 10)
                    Divider()
                        .frame(height: 30)
                    Button(action: {
                        isPhotoPickerPresented.toggle()
                    }) {
                        Image(systemName: "plus.square.fill")
                            .padding(.horizontal, 10)
                            .font(.system(size: 25))
                    }
                }
                .padding()
                .font(.system(size: 20))
                .foregroundColor(Color.black.opacity(0.8))
                
                Divider()
            }
        }
        .sheet(isPresented: $isPhotoPickerPresented) {
            PhotoPicker(selectedImage: $selectedImage)
        }
    }
}

struct PhotoGridView: View {
    let photos: [String] = ["elon", "antibes", "falconheavy", "rocket"]
    @Binding var selectedImage: UIImage?
    @Binding var isPhotoPickerPresented: Bool

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                Button(action: {
                    isPhotoPickerPresented = true
                }) {
                    Image(systemName: "camera")
                        .resizable()
                        .scaledToFit()
                        .padding(25)
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                
                ForEach(photos, id: \.self) { photoName in
                    Image(photoName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }

                if let selectedImage = selectedImage {
                    Image(uiImage: selectedImage)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
            .padding([.top, .leading, .trailing])
            .padding(.bottom, 10)
        }
    }
}

struct PhotoPicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        var parent: PhotoPicker

        init(parent: PhotoPicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true, completion: nil)
            
            guard let provider = results.first?.itemProvider else { return }
            
            if provider.canLoadObject(ofClass: UIImage.self) {
                provider.loadObject(ofClass: UIImage.self) { image, error in
                    DispatchQueue.main.async {
                        self.parent.selectedImage = image as? UIImage
                    }
                }
            }
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
}

#Preview {
    CreateView()
}

