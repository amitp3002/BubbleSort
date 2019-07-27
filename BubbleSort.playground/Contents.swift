import UIKit

var str = "Hello, playground"

var array = [3, 7, 2, 4, 3, 12, 10, 7, 8, 20, 18, 17]

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

BubbleSort(input: &array)
print(array)



