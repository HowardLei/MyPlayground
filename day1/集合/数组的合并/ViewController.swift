
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
        demo1()
    }
    //MARK:数组的合并
    //在合并的时候一定注意:必须是相同的数据类型
    //两个Any的类型数据也不能同时相加
    //不同的数据类型之间不能相加
    func demo() {
        var array1 = [1, 2, 3, 4, 5]
        let array2 = [6, 7, 8]
        var array3 = ["你", "我", "他"]
        let array4 = ["12345"]
        array1 += array2
        array3 += array4
        print(array1)
        print(array3)
    }
    //如果非要相加,可以将数据类型设置成AnyObject
    func demo1(){
        var array1 = [1, "你好"] as [AnyObject]
        let array2 = [6, 7, 8] as [AnyObject]
        array1 += array2
        print(array1)
    }
}
