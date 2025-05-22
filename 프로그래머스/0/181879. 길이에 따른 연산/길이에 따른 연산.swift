import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.reduce(num_list.count >= 11 ? 0 : 1) { num_list.count >= 11 ? $0 + $1 : $0*$1 }
}