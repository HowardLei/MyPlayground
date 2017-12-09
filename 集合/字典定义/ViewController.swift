
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
    }
    func demo1() {
        //OC中，字典使用{}
        //在Swift中，字典同样使用[]
        //结构：[KEY: VALUE] -> [NSString : NSObject]
        //let dict = ["name": "王尼玛","age": 18] 如果只输入这一部分，系统会自动推导出KEY: VALUE为 String : Any，但是在Swift4中要求必须都得添加显式类型注释
        let dict = ["name": "王尼玛","age": 18] as [String : Any]
        let dict1 = ["name": "王尼玛","age": 18] as! [String : NSObject]//为什么这行代码中as后边要加！
        print(dict)
        print(dict1)
    }
    //MARK:字典的数组
    func demo2(){
        let array = [["name": "张三","age": 18],["name": "李四","age": 12]] as [[String : AnyObject]]//这种数据定义格式在开发中使用的最多！
        //关于字典定义的数据要考虑JSON(本质是一串有意义的字符串数据交互格式)
        /*
         所有对象能够被转换为JSON必须遵守以下规则
         1、定义的节点是数组/字典
         2、所以对象必须都是NSString,NSNumber or NSNull{
         [NSNull null]用来在NSArray和NSDictionary中加入非nil（表示列表结束）的空值.
         [NSNull null]是一个对象，用来表示空，他用在不能使用nil的场合。}
         NSArray、NSDictionary 可以嵌套使用
         3、所有的KEY都是NSStrings
         4、NSNumber不能为nil或无穷大
         */
        print(array)
    }
}
