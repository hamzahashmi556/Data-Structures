//
//  MainView.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 31/12/2022.
//

import SwiftUI

let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationRow(title: "Linear Search")
                    NavigationRow(title: "Binary Search")
                }
                
                Section {
                    NavigationRow(title: "Bubble Sort")
                    NavigationRow(title: "Insertion Sort")
                    NavigationRow(title: "Merge Sort")
                    NavigationRow(title: "Quick Sort")
                }
                
            }
        }
        .navigationTitle("Data Structures")
        
    }
    
    func NavigationRow(title: String) -> some View {
        NavigationLink {
            Text(title)
        } label: {
            Text(title)
                .font(Font.system(size: 20, weight: .bold))
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
