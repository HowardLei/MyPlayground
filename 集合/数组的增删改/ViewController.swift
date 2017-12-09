
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        //demo2()
    }
    //MARK:数组的增删改
    func demo1() {
        var array1 = ["我","你","他"]
        //增加
        array1.append("呵呵")
        print(array1)
        //修改,通过下标进行定位
        array1[2] = "你大爷"
        print(array1)
        //减少,注意排序是第一个元素为0,不是1
        array1.remove(at: 1)
        print(array1)
        array1.removeAll(keepingCapacity: false)//清空的时候保不保留空间
        print("\(array1) \(array1.capacity)")
    }
    //MARK:数组的容量
    func demo2() {
        var array2 = [Int]()
        print("初始容量为:",array2.capacity)
        for i in 0..<8 {
            array2.append(i)
            print("\(array2) 容量:\(array2.capacity)")
        }
        /*
         关于容量
         1.刚初始化的数列的容量为0
         2.插入元素时,如果容量不够,则*2
         3.容量不够时,会在现有基础上*2,避免每次都需要分配空间
         */
    }
}
