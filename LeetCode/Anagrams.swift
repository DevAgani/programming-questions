import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var strMap = [String: [String]]()
    for item in strs {
        let orderedForm = String(item.sorted())
        if let val = strMap[orderedForm] {
            strMap[orderedForm] = val + [item]
        } else {
            strMap[orderedForm] = [item]
        }
    }
    return Array(strMap.values)
}