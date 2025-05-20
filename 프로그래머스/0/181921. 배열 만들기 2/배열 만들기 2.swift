import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    let strList: [String] = (l...r).map({ String($0) }).filter({ Set($0).isSubset(of: ["0", "5"]) })
    return strList.isEmpty ? [-1] : strList.map { Int($0) ?? 0 }
}