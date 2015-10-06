//: Written by Osiris
//: この番组は御覧のスポンサーの提供で送りします

import UIKit

struct Stack<T> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var st1 = Stack<Int>()
st1.push(1)
st1.push(2)

print(st1.pop())








