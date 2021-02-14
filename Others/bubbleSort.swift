import Foundation

func bubbleSort(_ arr: [Int]) -> [Int] {
    var solArr = arr
    for i in 0..<solArr.count {
        for j in 1..<solArr.count-i {
            if solArr[j] < solArr[j-1]{
                let tmp = solArr[j-1]
                solArr[j-1] = solArr[j]
                solArr[j] = tmp
            }
        }
    }
    return solArr
}

// print(bubbleSort([31, 37, 41, 43, 11, 13, 17, 47, 53, 59, 61, 67,2, 3, 5, 7, 19, 23, 29]))