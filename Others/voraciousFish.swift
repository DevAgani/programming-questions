import Foundation

func solution(_ A: Int, _ B:Int) -> Int {
    if A.isEmpty {
        return 0
    }

    var stack = []()
    var fishAlive = A.count
    for(i, value) in A.enumerated() {
        if (B[i] == 1)  {
            stack.append(value)
        }
        if (B[i] == 0) {
            while !stack.isEmpty {
                let lastItem = stack[stack.count - 1]
                let lastIndex = stack.count - 1
                if lastItem > value {
                    fishAlive -= 1
                    break
                } else if (lastItem < value ) {
                    fishAlive -= 1
                    stack.remove(at: lastItem)
                }
            }
        }
    }
    return fishAlive
}