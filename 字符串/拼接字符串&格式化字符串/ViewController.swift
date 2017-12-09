
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
    }
    //MARK:拼接字符串
    func demo1() -> (){
        let str1 = "Hello"
        let str2 = "world"
        let str3:Optional = "Inter"
        let str4:String? = "Milan"
        let point = CGPoint(x: 100, y: 200)
        print("\(str1) \(str2)")//一般的拼接格式"\(变量/常量) \(变量/常量)"
        print("\(str3 ?? "") \(str4 ?? "")")//对应含可选项的，记得用？？来避免强行解包
        print("\(point)")//同时，拼接结构还能用于显示
    }
    //MARK:格式化字符串
    func demo2() -> () {
        let h = 8
        let m = 5
        let s = 2
        let standard = String(format:"%02d:%02d:%02d",h,m,s)//这行相当于OC中的stringWithFormat。'()'就是with的意思
        print(standard)
    }
}
