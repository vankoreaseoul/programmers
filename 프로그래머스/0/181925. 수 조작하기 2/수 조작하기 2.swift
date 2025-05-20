import Foundation

func solution(_ numLog:[Int]) -> String {
    let dict: [Int: String] = [1: "w", -1: "s", 10: "d", -10: "a"]
    var ans: String = ""
    
    for index in 0..<numLog.count {
        guard index != 0 else { continue }
        let diff: Int = numLog[index] - numLog[index-1]
        let str: String = dict[diff] ?? ""
        ans += str
    }
    
    return ans
}