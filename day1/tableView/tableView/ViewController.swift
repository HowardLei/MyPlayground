import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "hello ~~~ \(indexPath.row)"
        return cell
        String
    }
    func setupUI() {
        //1、创建表格
        let tv = UITableView(frame: view.bounds, style: UITableView.Style.plain)
        //2.添加进视图
        self.view.addSubview(tv)
        //3、注册可重用cell
        tv.register(UITableView.self, forCellReuseIdentifier: "cellId")
        //4、设置数据源
        tv.dataSource = self
    }

}

