import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let count: Int = Set([a, b, c]).count
    var result: Int = a+b+c
    
    if count <= 2 {
        result *= (a*a + b*b + c*c)
    }
    
    if count == 1 {
        result *= (a*a*a + b*b*b + c*c*c)
    }
    
    return result
}