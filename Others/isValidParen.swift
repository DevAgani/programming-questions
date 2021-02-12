import Foundation

func isValid(_ s: String) -> Int {
    var stack = [Character]()
    let mapBrackets : [Character: Character] = ["}":"{", ")":"(", "]":"["]
    let openingBrackets = "([{"
    for char in s {
        if openingBrackets.contains(char){
            stack.append(char)
        }
        else {
            if stack.isEmpty {
                return 0
            }
            else if  stack[stack.count - 1] == mapBrackets[char] {
                stack.remove(at : stack.count - 1)
            }
            else {
                return 0
            }
        }
    }
    return stack.isEmpty ? 1 : 0
}