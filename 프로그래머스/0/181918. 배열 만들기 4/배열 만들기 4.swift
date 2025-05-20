import Foundation

func solution(_ arr:[Int]) -> [Int] {   
    var index: Int = 0
    var result: [Int] = []

    while(index < arr.count) {
        let val: Int = arr[index]
        guard let lastNum = result.last, lastNum >= val else {
            result.append(val)
            index += 1
            continue
        }
        result.removeLast()   
    }
    
    return result
}