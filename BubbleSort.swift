//
//  BubbleSort.swift
//  
//
//  Created by Amit Patel on 7/27/19.
//

import Foundation


// BubbleSort is O(n squared)
func BubbleSort(input: inout [Int])->Void {
    var isSorted = false
    var lastUnsorted = input.count - 1
    while !isSorted {
        isSorted = true
        for i in 0..<lastUnsorted {
            if input[i] > input[i + 1] {
                let temp = input[i]
                input[i] = input[i + 1]
                input[i + 1] = temp
                isSorted = false
            }
        }
        lastUnsorted -= 1
    }
}
