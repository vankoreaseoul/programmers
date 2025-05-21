import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    let a: Int = slicer[0]
    let b: Int = slicer[1]
    let c: Int = slicer[2]
    
    var startIdx: Int = 0
    var endIdx: Int = 0
    
    var result: [Int] = []
    
    switch n {
        case 1:
            endIdx = b
        case 2:
            startIdx = a
            endIdx = num_list.count - 1
        default:
            startIdx = a
            endIdx = b
    }
    
    result = Array(num_list[startIdx...endIdx])
    
    if n == 4 { result = result.enumerated().filter({ $0.offset.isMultiple(of: c) }).map({ $0.element }) }
    
    return result
}