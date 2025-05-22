import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count != arr2.count {
        return notEqual(arr1.count, arr2.count)
    } else {
        return equal(arr1, arr2)
    }
}

func notEqual(_ count_1: Int, _ count_2: Int) -> Int {
    return count_1 > count_2 ? 1 : -1
}

func equal(_ arr1: [Int], _ arr2: [Int]) -> Int {
    let sum_1: Int = arr1.reduce(0, +)
    let sum_2: Int = arr2.reduce(0, +)
    
    return sum_1 == sum_2 ? 0 : (sum_1 > sum_2 ? 1 : -1)
}