import Foundation

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // Explanation
    // Total Distance to cover = Y - X
    // Since we need the frog to jump to or past Y and we need a whole number
    // we'll subtract 1

    return ((Y - X + D - 1 ) / D)
}