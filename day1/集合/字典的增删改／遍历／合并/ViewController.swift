
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
        demo3()
    }
    //MARK: 字典的增删改
    func demo1(){
        var dict = ["name": "王尼玛","age": 18, "weight": 120] as [String : AnyObject]
        dict ["title"] = "Man City" as AnyObject
        print(dict)
        dict["name"] = "张三" as AnyObject
        print(dict)
        /*
         在添加和修改的时候都是通过查找key来对其进行添加或修改
         如果原有字典中有这个KEY，则修改
         如果原有字典中没有这个KEY，则添加
         */
        dict.removeValue(forKey: "name")//在这个forkey后边，是将KEY转化为'哈希'（hashable），hashable是将字符串变为唯一整数，便于查找（字典查找是通过KEY来定位值），提高字典遍历的速度。本身是MD5（加密算法）的一种
        print(dict)
    }
    //MARK: 字典的遍历
    func demo2(){
        let dict = ["name": "张三丰", "age": 18, "title": "King of recreation"] as [String : AnyObject]
        //遍历字典类似数组
        for e in dict {
            print(e)//这种输出会把KEY和VALUE的字样显示出来
        }
        print("------")
        for (n, s) in dict {
            print("\(n) \(s)")//由于这是拼接字符串，所以不会显示KEY和VALUE的字样
        }
    }
    //MARK: 字典的合并
    func demo3() {
        var dict1 = ["name": "张三丰","age": 18,"title": "疯子"] as [String : AnyObject]
        let dict2 = ["age": 16,"weight": 124] as [String : AnyObject]
        let dict3 = ["Team": "Arsenal"] as [String : AnyObject]
        for e in dict2 {
            dict1[e.key] = dict2[e.key]
        }
        print(dict1)
    }
}
