import Foundation

func solution(_ n:Int) -> Int {
    
    var sum: Int = 0
    
    if n%2 == 0 {
        for i in 2..<n+1 where i%2 == 0 {
            sum += i*i
        }
        
    } else {
        for i in 1..<n+1 where i%2 != 0 {
            sum += i
        }
    }
    
    return sum
}