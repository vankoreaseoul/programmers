import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list.suffix(from: n-1))
}