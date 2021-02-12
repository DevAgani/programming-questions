import Foundation

public func solution(_ A : inout [Int]) -> Int {
    let sorted = A.sorted()
    let count = sorted.count + 1
    // Expected Sum, since the range of the array is [1..(N + 1)]
    let supposedSum = count * (count + 1) / 2
    // Get the sum of the existing items and the subtract from the Expected Sum
    let actualSum = sorted.reduce(0 , {$0 + $1})

    return supposedSum - actualSum

}