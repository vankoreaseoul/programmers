import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var array: [Int] = arr
    queries.forEach { array.swapAt($0[0], $0[1]) }
    return array
}