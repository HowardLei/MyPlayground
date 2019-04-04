import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
    }
    //MARK:数组的遍历
    func demo1() {
        let array1 = ["你","我","他"]
        //1.一般的方法遍历
        print("一般的方法遍历")
        for i in 0..<array1.count {
            print(array1[i])
        }
        //2.for in 遍历
        print("for in 遍历")
        for e in array1{
            print(e)
        }
        //3.enum block遍历
        print("用enum block遍历")
        array1.forEach { (e) in
            print(e)
        }
        //4.enum 遍历
        print("enum 遍历")
        //n表示一个从0开始的连续整数，而s表示序列的一个元素。
        //在这里面，n,s都可以互换
        for (n, s) in array1.enumerated() {
            print("\(n) \(s)")
        }
        //5.反序遍历
        print("反序遍历")
        //这是正确对应序号和元素的
        for (n, s) in array1.enumerated().reversed() {
            print("\(n) \(s)")
        }
        //这是序号和元素对应错的
        print("错误的反序遍历")
        for (n, d) in array1.reversed().enumerated() {
            print("\(n) \(d)")
        }
    }
}
