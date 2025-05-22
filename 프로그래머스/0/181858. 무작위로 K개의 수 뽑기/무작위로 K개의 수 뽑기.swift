import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    arr.forEach { if !result.contains($0) && result.count < k { result.append($0) } }
    if result.count < k { stride(from: 0, to: (k - result.count), by: 1).map({ _ in result.append(-1) }) }
    return result
}