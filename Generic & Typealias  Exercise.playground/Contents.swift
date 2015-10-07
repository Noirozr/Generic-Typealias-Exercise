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

enum Result<T, U> {
    case Success(T)
    case Failure(U)
}


let aSuccess: Result<Int, String> = .Success(123)
let aFailure: Result<Double, String> = .Failure("Something wrong with result")

extension Result {
    
    func transform<V>(left: T -> V, right: U -> V) -> V {
        switch self {
        case .Success(let value): return left(value)
        case .Failure(let value): return right(value)
        }
        
    }
}


protocol FoodEatingType {
    typealias Food
    
    var isSatiated: Bool {get}
    func feed(food: Food)
}

class Koala: FoodEatingType {
    var foodLevel = 0
    var isSatiated: Bool {return foodLevel < 10}
    
    func feed(food: String) {
        if !isSatiated {
            foodLevel += 1
        }
    }
}

protocol Foo {
    typealias Key
    typealias Element
}

protocol Bar {
    typealias RawGeneratorType
}

func example<T: Foo, U, V where V: Foo, V: Bar, T.Key == V.RawGeneratorType, U == V.Element>(arg1: V, arg2: U, arg3: V){
    // ...
    
}







