import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return arr.enumerated().map { (offset, element) -> Int in
        if arr.count.isMultiple(of: 2) {
            return offset.isMultiple(of: 2) ? element : element + n
        } else {
            return offset.isMultiple(of: 2) ? element + n : element
        }       
    }
}