import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
        demo3()
        demo4()
    }
    //MARK:字符串的遍历
    func demo1() {
        let str: String = "你好大爷"
        for c in str//在Xcode9，Swift4的版本中，遍历时不再需要加characters
        {
          print(c)
        }
    }
    //MARK:字符串长度--返回字符的个数(现在的最佳方案)
    func demo2(){
        let str = "Hello world"
        print(str.count)//同上，计数的时候也不再需要characters
    }
    //MARK:字符串长度--返回指定编码对应的字符数量
    func demo3() {
        let str1 = "你大爷"
        print(str1.lengthOfBytes(using: .utf8))//在utf8环境下，一个汉字占3个字节
    }
    //MARK:使用NSString进行中转
    /*
     关于中转
     在OC中是这样写的：(CZTableCell *)[tableview  dequeue
     Swift中是：'值 as 类型'进行转换
     */
    func demo4() {
        let str2 = "我爱这个世界"
        let ocStr = str2 as NSString;
        print(ocStr.length)
    }
}
