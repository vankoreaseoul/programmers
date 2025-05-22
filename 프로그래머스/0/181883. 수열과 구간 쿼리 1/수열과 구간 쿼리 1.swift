import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var newArr: [Int] = arr
    
    queries.forEach {
        let startIdx: Int = $0[0]
        let endIdx: Int = $0[1]
        
        newArr = newArr.enumerated().map {
            if $0.offset >= startIdx && $0.offset <= endIdx {
                return $0.element + 1
            } else {
                return $0.element
            }
        }
    }
    return newArr
}