
import UIKit
var str = "Hello, playground"

let a:Int? = 10
let b:String? = "我是好人"

if let num = a ,let str = b  {
    print(String(num) + str)
}else{
    print("num或者str为nil")
}

guard let num1 = a,let str1 = b else {
    print("num或者str为nil")
    return
}
    print(String(num1) + str1)
