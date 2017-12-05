
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
    }
    func demo1(){
        //1、原始的可选项
        let a:Optional = 10
        print(a)//输出的时候会是Optional(10)
        //2、简单的定义:'?'用来定义可选的Int类型，如果没有值，也可能有个整数
        let b:Int? = 40
        print(b!)
        /*
         '!'强行解包--从可选值中强行获取对应的非空值。
         注意：程序员需要为每一个‘!’负责。在编程的过程中少使用!
         */
    }
    func demo2() {
        //let c:Int? = nil
        //print(c!)
        //Unexpectedly found nil while unwrapping an Optional value
        //说明在解包的时候发现了nil值，程序会崩溃的因为这个nil值
        //nil值本身不是任何数据类型，不能参与计算
    }
}
