import Foundation

func binarySearch(_ arr: [Int], _ searchKey: Int) -> Int {
    var lowerbound  = 0
    var upperBound = arr.count
    while lowerbound < upperBound {
        let midPoint = lowerbound + (upperBound - lowerbound) / 2
        if arr[midPoint] == searchKey {
            return midPoint
        } else if arr[midPoint] < searchKey {
            lowerbound = midPoint + 1
        } else {
            upperBound = midPoint
        }
    }
    return -1
}

print(binarySearch([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67],43))

