
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
        demo3()
        demo4(name: "王尼玛", age: 18)
    }
    //MARK: 单纯if的方法
    func demo1(){
        let oName: String? = "老王"
        let oAge: Int? = 10
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }
    }
    //MARK:if let句式
    func demo2(){
        let oName: String? = "老王"
        let oAge: Int? = 10
        if let name = oName,let age = oAge//出现时就是判断对象是否为nil。
        {
            print(name + String(age))
            //进入这个分支以后，name和age一定有值，不需要解包
            //name和age的作用域仅在{}中
        }else {
            print("name 或者 age为nil")
        }
        if var name1 = oName,let age1 = oAge {
            name1 = "小张"
            print(name1 + String(age1))
        } else {
            ()
        }
        /*
         关于if let与if var的区别
         if let：判断对象是否为nil。
         if var：{}可以対值进行修改！
         */
    }
    //MARK:guard let句式
    /*
     guard let句式正好与if let相反
     guard let一定有值，如果没有没有直接返回，所以在写的时候不要忘了{}最后写return
     就是先写else，else后面的区域相当于if let{}的区域
     guard用于降低分支层次的办法
     */
    func demo3(){
        let oName: String? = "老王"
        let oAge: Int? = 10
        guard let name = oName ,let age = oAge else {
            print("name或者age为nil")
            return
        }
        print(name + String(age))
    }
	func demo4(name: String?, age: Int?){
	guard let name = name, let age = age else
    /*
         guard let& if let 的技巧
         使用同名的变量接受值，在后续使用的都是非空值，不需要解包
         同时也能避免起名字的烦恼
         */
    {
            print("name或者age为nil")
            return
        }
        print(name + String(age))
    }
}
