
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2(x: 10, y: 20)
        demo3()
    }
    //MARK: 一般的强行解包的方法
    func demo1() {
        let x: Int? = 10
        let y: Int? = 20
        print(x! + y!)
    }
    //MARK: ??的方法
    /*
     '??'本身是一个简单的三目
     若有值的话，使用值
     若没有值的话，使用？？后面的值替代
     ？？本身优先级'低'，使用的时候最好用'()'包一下
     */
    func demo2(x: Int?, y: Int?) {
        print((x ?? 0) + (y ?? 0));
    }
    func demo3() {
        let name: String? = "老王"
        print((name ?? "") + "你好")
        print(name ?? "" + "你好")
    }
}
