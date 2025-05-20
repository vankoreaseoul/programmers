import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var array: [Int] = arr
    
    queries.forEach {
        let k = $0[2]
        ($0[0]...$0[1]).filter({ $0%k == 0 }).forEach { array[$0] += 1 }
    }
    
    return array
}