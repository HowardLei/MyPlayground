
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
    }
    //MARK:用NSString进行中转,再取字串,记住在前面函数调用上加上@objc，因为这是OC方法
  @objc func demo1(){
        let str = "我爱这个世界"
        let ocStr = str as NSString
        let s1 = ocStr.substring(from: 2)//这是从第2个字符开始取
        let s2 = ocStr.substring(with: NSMakeRange(3, 3))//Fatal error: subscript: subrange extends past String end出现这个错误是因为取的范围是超出这个字符串的范围
        let s3 = ocStr.substring(to: 5)//这是取到第5个字符
        print(s1)
        print(s2)
        print(s3)
    }
    //MARK:用Swift4.0方法取字符串中字符，不推荐使用，语法经常变化
        func demo2() {
        let str1 = "Swift怎么这么好用"//在utf16中，中英文都占4字节
        //let str2 = "我真是不知道现在Swift到底怎么写了"
        print(str1.startIndex)
        print(str1.endIndex)//怎么跟视频里展示的不一样？
        //取字符串第一个字符
        let startIndex = str1.startIndex
        print(str1[startIndex])
        //取字串的范围
            guard let range = str1.range(of: "怎么") else//后边range(of:)的值是Optional的，也就是说可能有，也可能没有
        {
            print("nil")
            return
        }
            print(str1.substring(with: range))
    }
}
