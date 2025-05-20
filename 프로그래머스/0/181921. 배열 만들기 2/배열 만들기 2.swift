import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var startNum: Int = 0
    var num: Int = 0
    var list: [Int] = []
    
    while(num < r) {
        num = (Int(String(startNum, radix: 2)) ?? 0) * 5
        if (num >= l && num <= r) { list.append(num) }
        startNum += 1
    }
    return list.isEmpty ? [-1] : list
}