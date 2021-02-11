import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var solAr = [[Int]]()

    //If less than three return
    guard nums.count >= 3 else {
     return solAr
    }

    // sort the array
    let sortedArr = nums.sorted()

    // loop through the array upto the second last item
    for i in 0..<sortedArr.count - 2 {
        // this will avoid looping over a previously used value, say -1, -1 since the array is ordered
        if i > 0 && sortedArr[i] == sortedArr[i-1] {
            continue
        }
        let firstValue = sortedArr[i], difference = -firstValue
        // start iterating from both ends i.e starting from the value after index i and  the last value
        var j = i + 1, k = nums.count - 1
        while j < k {
            if sortedArr[j] + sortedArr[k] == difference {
                solAr.append([firstValue, sortedArr[j], sortedArr[k]])

                // repeat this while incrementing j
                repeat {
                    j +=  1
                } while sortedArr[j] == sortedArr[j-1] && j < k

                // repeat this while decrementing k
                repeat {
                    k -= 1
                } while sortedArr[k] == sortedArr[k + 1] && j < k

            } else if sortedArr[j] + sortedArr[k] < difference {
                j += 1
            } else {
                k -= 1
            }
        }
    }



    /// Brute Force Approach which didn't work
//    for i in 0..<sortedArr.count {
//        for j in i+1..<sortedArr.count {
//            for k in j+1..<sortedArr.count {
//                let arrayToAppend = [sortedArr[i],sortedArr[j],sortedArr[k] ]
//                if( sortedArr[i] + sortedArr[j] + sortedArr[k] == 0 && !solAr.contains(arrayToAppend)) {
//                    solAr.append(arrayToAppend)
//                }
//            }
//        }
//    }
    return solAr
}