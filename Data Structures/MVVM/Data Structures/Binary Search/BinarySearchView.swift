//
//  BinarySearchView.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 01/01/2023.
//

import SwiftUI

struct BinarySearchView: View {
    @ObservedObject var viewModel = BinarySearchViewModel()
    var body: some View {
        NavigationView {
            Text("Hello, World!")
        }
    }
}

struct BinarySearchView_Previews: PreviewProvider {
    static var previews: some View {
        BinarySearchView()
    }
}
