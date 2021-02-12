import Foundation

func solution(_ A :  [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    // We'll use the count to calculate the expected sum
    let count = A.count
    // we'll remove the duplicate items if at all there are any
    let localArray = Array(Set(A))
    // we'll calculate the localsum
    let sum = localArray.reduce(0, {$0 + $1})
    // if the expected sum is not equal to the calculate sum the this is not a permutation
    let expectedSum = count * (count + 1) / 2

    return expectedSum == sum ? 1 : 0
}

print(solution([1, 4, 1] ))