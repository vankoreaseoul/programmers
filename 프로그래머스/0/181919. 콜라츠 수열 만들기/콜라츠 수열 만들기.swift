import Foundation

func solution(_ n:Int) -> [Int] {
    var newN: Int = n
    var list: [Int] = [newN]
    
    while(newN != 1) {
        newN = newN%2 == 0 ? newN/2 : (3*newN + 1)
        list.append(newN)
    }
    return list
}