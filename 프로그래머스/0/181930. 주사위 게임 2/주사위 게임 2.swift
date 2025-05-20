import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    var answer: Int = a+b+c
    
    if (a != b) && (a != c) && (b != c) {
        return answer
    } else if (a == b) && (b == c) {
        return answer*(a*a + b*b + c*c)*(a*a*a + b*b*b + c*c*c)
    } else {
        return answer*(a*a + b*b + c*c)
    }
    
    
//     if a == b {
//         if b == c {
//             // 모두 같은 경우
//             return (a+b+c)*(a*a + b*b + c*c)*(a*a*a + b*b*b + c*c*c)
//         } else {
//             // 둘만 같은 경우
//             return (a+b+c)*(a*a + b*b + c*c)
//         }
        
//     } else {
//         if b == c {
//             // 둘만 같은 경우
//             return (a+b+c)*(a*a + b*b + c*c)
//         } else if a == c {
//             // 둘만 같은 경우
//             return (a+b+c)*(a*a + b*b + c*c)
//         } else {
//             // 모두 다른 경우
//             return (a+b+c)
//         }
//     }
}