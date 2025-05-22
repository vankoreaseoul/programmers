import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let minLength: Int = (0...10).map({ Int(pow(2.0, Double($0))) }).filter({ $0 >= arr.count }).first ?? 1
    let gap: Int = minLength - arr.count
    
    return gap == 0 ? arr : arr + [Int](repeating: 0, count: gap)
}