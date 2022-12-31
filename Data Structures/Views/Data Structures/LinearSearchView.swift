//
//  LinearSearchView.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 31/12/2022.
//

import SwiftUI

struct LinearSearchView: View {
    @State var title: String
    @State var dataEntry = ""
    @State var data: [Int] = []
    @State var numberToSearch = ""
    @State var resultMessage = ""
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack() {
                    
                    // Fetch Data
                    VStack {
                        
                        Text("Enter Numbers Here").fontWeight(.bold)
                        
                        TextField(text: $dataEntry) {
                            Text("Enter the Numbers here")
                        }
                        .frame(height: 50, alignment: .center)
                        .padding(.horizontal)
                        .cornerRadius(10)
                        .border(Color.gray)
                        .onSubmit {
                            for i in dataEntry.split(whereSeparator: {$0 == " "}) {
                                if let num = Int(i) {
                                    data.append(num)
                                }
                            }
                            dataEntry = ""
                        }
                    }
                    .padding()
                    
                    // Display Data
                    if data.count > 0 {
                        VStack {
                            
                            Text("Your Given data is below")
                                .fontWeight(.bold)
                            
                            Text(data.map({String($0)}).joined(separator: ", "))
                        }
                        .padding()
                        
                        // Search Data
                        
                        VStack {
                            Text("Enter Number to Search").fontWeight(.bold)
                            
                            TextField(text: $numberToSearch) {
                                Text("Enter the Number here to search")
                            }
                            .frame(height: 50, alignment: .center)
                            .padding(.horizontal)
                            .cornerRadius(10)
                            .border(Color.gray)
                            .onSubmit {
                                performSearch()
                            }
                            
                            Text(resultMessage)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle(title)
        }
    }
    
    func performSearch() {
        var isFound = false
        for i in 0 ... data.count - 1 {
            if data[i] == Int(numberToSearch) {
                resultMessage = "Number found at \(i)"
                isFound = true
            }
        }
        if isFound == false {
            resultMessage = "Number not exist"
        }
    }
}

struct LinearSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LinearSearchView(title: "Linear Search")
    }
}
