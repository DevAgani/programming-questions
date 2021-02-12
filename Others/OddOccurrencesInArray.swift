import Foundation

func oddOccurrencesInArray(_ arr: [Int]) -> Int {
    let localSorted = arr.sorted()
    // We'll use th dictionary to track the items in the array
    var dict : [Int: Int] = [:]
    // loop through and append at the index the count of occurrrences
    for i in localSorted {
        if let val = dict[i] {
            dict[i] = val + 1
        } else  {
            dict[i] = 1
        }
    }
    // if the value at a particular iteration is not divisible by 2
    // this is the unpaired occurrence.
    for (key, value) in dict {
        if value % 2 != 0 {
            return key
        }
    }
    return 0
}