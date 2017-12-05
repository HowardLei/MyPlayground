
#import "Shop.h"

@implementation Shop
//欢迎语
- (void)welcome{
    NSLog(@"小卖部欢迎你");
    NSLog(@"本商店现有饼干，面包，饮料供您选择");
    NSLog(@"请输入您所需要的商品");
    char c[1];//创建一个字符串，用于存储用户的选择
    scanf("%s",c);//输入你要的产品
    NSString * choice = [NSString stringWithUTF8String:c];//对C语言字符串进行转换，转为OC字符串
    NSLog(@"请输入您所需要的数量");
    int number;
    scanf("%d",&number);//输入数量
    //取商品
    NSMutableArray * temp = [_shelf getGoodsWithName:choice andNumber:number];
    //创建价钱
    float money = [self getMoneyWithTemp:temp];
    NSLog(@"你买的商品总价为%.2f",money);
    NSLog(@"请问您确定购买吗？1.购买 2.取消 3.退出");
    int num1;
    scanf("%d",&num1);
    if (num1 == 1) {
        NSLog(@"您选择的商品是:%@，商品的数量是:%d,商品的总价是%.2f",choice,number,money);
    }else if (num1 == 2){
        [self welcome];
        [_shelf addGoodsWithName:choice andNumber:number];//别忘了把之前货架上少的东西添加回去
    }else if (num1 ==3){
        NSLog(@"ค(TㅅT)再见");
        [_shelf addGoodsWithName:choice andNumber:number];//别忘了把之前货架上少的东西添加回去
    }else{
        NSLog(@"请重新输入");
    }
}
//计算价格
- (float)getMoneyWithTemp:(NSMutableArray *)temp{
    int money = 0;
    for (int i = 0; i < temp.count; i++) {
        Goods * good = temp [i];
        money += good.price;
    }
    return money;
}
//商店的初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        _shelf = [Shelf new];
        [_shelf addGoodsWithName:@"bread" andNumber:50];
        [_shelf addGoodsWithName:@"biscuit" andNumber:50];
        [_shelf addGoodsWithName:@"drink" andNumber:50];
    }
    return self;
}
@end
