
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       demo1()
       demo2()
       demo3()
    }
    /*
     1.基本形式
     定义常量:let，定义后不可修改
     定义变量:var，定义后可以修改
     自动推导，变量和常量类型会根据右侧的代码的执行结果，推到对应的类型
     热键：option + click
     2、在swift中对类型要求异常严格，任何不同数据之间，不允许直接计算
        不会做默认的隐式转换，所有类型确定，都需要程序员负责！
     3、在Swift中，不存在基本数据类型，都是结构体！
     4、关于let与var的选择
        不可变的会更安全，开发的时候都先使用let，在需要变化的时候，再改成var
     */
    func demo1(){
        let a = 10
        let b = 20
        var c = 20
        c = 50
        print(a + b)
        print(c)
    }
    func demo2(){
        let x = 10
        let y = 10.5
        print(Double(x) + y)
        /*
         如果想进行计算的话
         1、将y转换成int
         print(x +Int(y))  输出结果就是20
         2、将x转换为Double
         print(Double(x) + y)
         */
    }
    func demo3() {
        let x:Double = 10
        let y = 10.5
        print(x + y)
        /*
         3、指定数据类型：let/var x:类型 = 值
         注意：在Swift开发中，极少使用指定类型，通常都是自动推导！
         */
    }
    func demo4() {
        let v = UIView()
        v.backgroundColor = UIColor.blue
        v.addSubview(v)
        //在上面的例子中，由于只是修改的是v的属性，并没有修改v的指针地址
    }
}
