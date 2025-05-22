import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map({ item in (0..<item).map({ _ in item }) }).flatMap({$0})
}