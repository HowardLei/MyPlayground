
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo2()
    }
    //MARK:传统for循环，现在已取消
    func demo1() {
        //for var i = 0, i < 9, i++{} 这是传统的for循环结构，在Swift3中就已经取消了
        /*
         其中：i++与++i的不同
         i++ 等价代码
         var i
         var temp = i
         var num = temp
         i = temp + 1   翻译过来就是：创建一个临时变量temp来接受i，然后再
         
         ++i 的等价代码
         var i = i + 1
         var num = i
         */
    }
    //MARK:现在的for循环
    func demo2() {
        for i in 0..<5 {
            print(i)
        }//这是遍历从[0,5)
        print("----")
        for i in 0...5 {
            print(i)
        }//这是遍历从[0,5]
        print("----")
        for i in (0...10).reversed() {
            print(i)
        }//如果想进行反序遍历，这需要先把区间括起来，再进行reverse
    }
}
