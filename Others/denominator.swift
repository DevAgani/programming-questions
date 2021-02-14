import Foundation

// Find an index of an array such that its value occurs at more than half of indices in the array

 func solution(_ A : [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var dict = [Int: [Int]]()
    let n = A.count
    if A.isEmpty {
        return -1
    }
    for (index, value) in A.enumerated(){
        if let item = dict[value]{
            let sumToAppend = item[0] + 1
            dict[value] = [sumToAppend, index]
            if sumToAppend > ( n / 2) {
                return index
            }
        } else {
            if value != 0  {
                if count > 1 {
                    dict[value] = [1,index]
                } else {
                    return index
                }

            }

        }
    }

    return -1
}
