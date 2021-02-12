import Foundation

// Time Complexity = Qudratic = O(n^2)
func SelectionSort(_ arr: [Int]) -> [Int]{
    let n = arr.count
    var sortedArray = arr
    for i in 0..<n {
        var min = i
        for j in i+1..<n{
            if sortedArray[j] < sortedArray[min]{
                min = j
            }
            sortedArray.swapAt(i,min)
        }
    }
    return sortedArray
}

//SelectionSort([5,3,8,1,4,2])
