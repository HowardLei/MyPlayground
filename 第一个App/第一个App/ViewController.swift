/*
 1.OC [[UIView alloc]initWithXXX:]
   Swift UIView(XXX: )
         UIView()
 
 对象初始化时:类名() == [[类名 alloc]init]
 2.类方法
    OC [UIColor redColor]
    Swift UIColor.red()
 3.访问当前对象的属性,可以不使用'self.'
 建议:不使用
 原因:在闭包的时候(类似OC:Block),需要使用self.
 4.没有';'
 ';'目的是分割语句,在swift中默认不需要
 5.枚举类型
 OC     UIButtonTypeContactAdd
 Swift  '.'contactAdd
 6.监听方法
 OC     @selector
 Swift  #selector
 7.调试
 OC     NSLog
 Swift  print  优势:1.打印时没有时间 2.效率比NSLog要高
 8.有关function调用
 OC     __FUNCTION__
 Swift  #function
 */
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1.创建一个视图
        let v = UIView(frame:CGRect(x: 0,y : 20,width: 100,height: 100))
        //2.设置背景颜色
        v.backgroundColor = #colorLiteral(red: 0, green: 0.4802979827, blue: 0.9984222054, alpha: 1)
        //3.添加到当前视图
        view.addSubview(v)
        //4.添加一个按钮
        let btn = UIButton(type: .contactAdd)
        v.addSubview(btn)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        func clickMe(){
            print(#function)
            print("哈哈哈")
        }
    }
}
