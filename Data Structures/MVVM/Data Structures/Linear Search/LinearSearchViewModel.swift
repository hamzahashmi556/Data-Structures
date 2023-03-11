//
//  LinearSearchViewModel.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 31/12/2022.
//

import Foundation

class LinearSearchViewModel: ObservableObject {
    @Published var dataEntry = ""
    @Published var data: [Int] = []
    @Published var numberToSearch = ""
    @Published var resultMessage = ""
    
    init(dataEntry: String = "", data: [Int] = [], numberToSearch: String = "", resultMessage: String = "") {
        self.dataEntry = dataEntry
        self.data = data
        self.numberToSearch = numberToSearch
        self.resultMessage = resultMessage
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
