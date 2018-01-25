import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
        demo3()
    }
   func demo1(x: String) -> (String){
       return x
    }
    func demo2(){
       let a = demo1
       print(a("怎么样，我现在就调用你"))
    }
    func demo3(){
       var x = 0
        x = 10
        print(x)
    }
}
