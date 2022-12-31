//
//  LinearSearchView.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 31/12/2022.
//

import SwiftUI

struct LinearSearchView: View {
    
    @ObservedObject var viewModel: LinearSearchViewModel
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack() {
                    
                    // Fetch Data
                    VStack {
                        
                        Text("Enter Numbers Here").fontWeight(.bold)
                        
                        TextField(text: $viewModel.dataEntry) {
                            Text("Enter the Numbers here")
                        }
                        .frame(height: 50, alignment: .center)
                        .padding(.horizontal)
                        .cornerRadius(10)
                        .border(Color.gray)
                        .onSubmit {
                            for i in viewModel.dataEntry.split(whereSeparator: {$0 == " "}) {
                                if let num = Int(i) {
                                    viewModel.data.append(num)
                                }
                            }
                            viewModel.dataEntry = ""
                        }
                    }
                    .padding()
                    
                    // Display Data
                    if viewModel.data.count > 0 {
                        VStack {
                            
                            Text("Your Given data is below")
                                .fontWeight(.bold)
                            
                            Text(viewModel.data.map({String($0)}).joined(separator: ", "))
                        }
                        .padding()
                        
                        // Search Data
                        
                        VStack {
                            Text("Enter Number to Search").fontWeight(.bold)
                            
                            TextField(text: $viewModel.numberToSearch) {
                                Text("Enter the Number here to search")
                            }
                            .frame(height: 50, alignment: .center)
                            .padding(.horizontal)
                            .cornerRadius(10)
                            .border(Color.gray)
                            .onSubmit {
                                viewModel.performSearch()
                            }
                            
                            Text(viewModel.resultMessage)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle(viewModel.title)
        }
    }
    
    
}

struct LinearSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LinearSearchView(viewModel: LinearSearchViewModel(title: "Linear Search", data: []))
    }
}
