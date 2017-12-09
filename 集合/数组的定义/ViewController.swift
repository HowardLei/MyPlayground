
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
    }
    //MARK:数组的定义
    func demo1() {
        /*
         定义数组用[]，与OC相同，但是没有'@'
         跟OC中的数组指定泛型类似
         泛型:程序设计语言的一种特性。允许程序员在强类型程序设计语言中编写代码时定义一些可变部分，那些部分在使用前必须作出指明。
         */
        //创建一个数组，自动推导的是Int类型
        //数组不支持NS系类型
        let array1 = [1, 2, 3, 4, 5]
        print(array1)
        //创建一个数组，自动推导的是String类型
        let array2 = ["你","我","他"]
        print(array2)
        //创建一个点数组
        let point = CGPoint(x: 100, y: 100)
        let array3 = [point]
        print(array3)
        //创建一个混合数组,在前面一定要定义为Any
        //在Swift中，一个类可以不是任何类的父类，例如：Any
        /*
         AnyObject,Any和AnyClass的区别
         AnyObject:就是OC中的id
         Any:就是所有类型都可以用Any表示
         AnyClass:表示任意类的元类型。提示的时候写着AnyObject.Type,也就是说：对象.Type就是这个对象的元类型
         */
        let array4 = ["我", 2, point] as [AnyObject]
        //let array5:AnyObject = ["我", 2, point]  为什么这么写就报错
        print(array4)
    }
    func demo2() {
        var array2 = [Int]()//初始化数组 句式:let/var 数列名 = [数据类型](). 如果不对数列进行初始化,则无法对数列进行操作
        array2.append(1)
        print(array2)
    }
}
