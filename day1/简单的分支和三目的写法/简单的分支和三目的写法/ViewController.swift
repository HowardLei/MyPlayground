
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
    }
    //MARK:简单的分支
    func demo1() {
        let x = 10
        /*
         关于分支的不同
         1.条件不需要()
         2.语句必须有{} 很多公司的代码规范中，禁止不使用{}
         Swift中不准这样写
         if x > 5  print("大了")
         */
        if x > 5 {
            print("大了")
        } else {
            print("小了")
        }
    }
    //MARK: 简单的三目写法
    func demo2() {
        /*
         三目的语法和OC一样的
         */
        let x = 8
        x > 5 ? print("大了") : print("小了")
        let y = 3
        y > 5 ? print("大了") : print("小了")
        let z = 10
        z > 2 ? print("大了") : ()//'()'的意思是空执行
    }
}
