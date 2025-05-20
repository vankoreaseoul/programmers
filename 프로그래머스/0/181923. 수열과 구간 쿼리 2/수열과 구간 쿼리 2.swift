import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    return queries.map { 
        let k: Int = $0[2]
        let array: [Int] = Array(arr[$0[0]...$0[1]]).filter({ $0 > k }).sorted()

        if array.isEmpty {
            return -1
        } else {
            return array[0]
        }
    }
}