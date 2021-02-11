import Foundation

func Iterations(_ N: Int) -> Int {
    let binaryRepr = Array(String(N, radix: 2))
    var largestCount = 0
    var BigLargest = 0
    for i in 0..<binaryRepr.count {
        if binaryRepr[i] != "1"{
            largestCount += 1
        } else {
            if largestCount > BigLargest {
                BigLargest = largestCount
            }
            largestCount = 0
        }
    }
    return BigLargest
}