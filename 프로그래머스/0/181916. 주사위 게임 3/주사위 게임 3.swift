import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let numList: [Int] = [a, b, c, d]
    var numSet: Set<Int> = []
    var count: Int = 0
    var duplicateNumSet: Set<Int> = []
    
    numList.forEach {
        numSet.insert($0)
        let setCount = numSet.count
        if setCount == count { duplicateNumSet.insert($0) } 
        count = setCount
    }
    
    if count == 4 { return numList.min() ?? 0 } else if count == 1 { return 1111*a }
    
    let duplicateNums = Array(duplicateNumSet)
    
    if duplicateNumSet.count == 1 {
        numSet.remove(duplicateNums[0])
        
        if count == 3 {
            return Array(numSet).reduce(1, *)
        } else if count == 2 {
           return (10*duplicateNums[0] + Array(numSet)[0])*(10*duplicateNums[0] + Array(numSet)[0])
        }
    }
    
    
    if duplicateNumSet.count == 2 && count == 2 {
        let sub: Int = duplicateNums[0] > duplicateNums[1] ? duplicateNums[0] - duplicateNums[1] : duplicateNums[1] - duplicateNums[0]
        return duplicateNums.reduce(0, +)*sub
     }
    
    return 0
}
