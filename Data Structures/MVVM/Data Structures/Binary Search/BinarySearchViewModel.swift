//
//  BinarySearchViewModel.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 01/01/2023.
//

import Foundation
import SwiftUI

class BinarySearchViewModel: ObservableObject {
    
    @Published var array: [Int] = []
    @Published var target: Int = 0
    @Published var resultMessage = ""
    @Published private var leftIndex = 0
    @Published private var rightIndex = 0
    @Published private var midIndex = 0
    
    /// Array Must be sorted in ascending Order
    func setup(array: [Int], target: Int) {
        self.array = array
        self.target = target
        self.rightIndex = array.count - 1
        self.midIndex = (leftIndex + rightIndex) / 2
    }
    
    func binarySearch() {
        var left = 0
        var right = array.count - 1
        var isfound = false
        
        while left <= right {
            let middle = (left + right) / 2
            let value = array[middle]
            
            if value == target {
                isfound = true
                resultMessage = "Item found at \(middle)"
            } else if value < target {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        
        if isfound == false {
            resultMessage = "Item not exist"
        }
    }
}
