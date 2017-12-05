
#import "Shelf.h"
@implementation Shelf
//创建商品
NSString * biscuitName = @"饼干";
NSString * breadName = @"面包";
NSString * drinkName = @"饮料";
//加入商品
- (void)addGoodsWithName:(NSString *)name andNumber:(int)number{
    if ([name isEqualToString:biscuitName]){
        for (int i = 0; i < number; i++){
            Biscuit * biscuit = [[Biscuit alloc]init];
            biscuit.name = @"奥利奥";
            biscuit.price = 5;
            [_biscuitArray addObject:biscuit];
        }
    }else if ([name isEqualToString:breadName]){
        for (int i = 0; i < number; i++) {
            Bread * bread = [[Bread alloc]init];
            bread.name = @"宾堡";
            bread.price = 4.5;
            [_breadArray addObject:bread];
        }
    }else if ([name isEqualToString:drinkName]){
        for (int i = 0; i < number; i++) {
            Drinks * drinks = [[Drinks alloc]init];
            drinks.name = @"七喜";
            drinks.price = 3;
            [_drinkArray addObject:drinks];
        }
    }
}
//取商品
- (NSMutableArray *)getGoodsWithName:(NSString *)name andNumber:(int)number{
    NSMutableArray * shopCar = [NSMutableArray array];
    //从货架上取面包
    if ([name isEqualToString:breadName]) {
        for (int i = 0; i < number; i++) {
            [shopCar addObject:_breadArray[0]];//先从面包货架上把面包放进购物车里
            [_breadArray removeObject:_breadArray[0]];//再将货架上的商品减去一个
        }
    }
    //从货架上取饼干
    else if ([name isEqualToString:biscuitName]){
        for (int i = 0; i < number; i++) {
            [shopCar addObject:_biscuitArray[0]];//先从饼干货架上把饼干放进购物车里
            [_breadArray removeObject:_breadArray[0]];//再将饼干货架上的饼干减去一个
        }
    }
    //从货架上取饮料
    else if ([name isEqualToString:drinkName]){
        for (int i = 0; i < number; i++) {
            [shopCar addObject:_drinkArray[0]];//先从饮料货架上把饮料放进购物车里
            [_drinkArray removeObject:_drinkArray[0]];//再将饮料货架上的饮料减去一个
        }
    }
    return shopCar;//因为这是带返回值的方法，所以最后记得return一个值，这里要把shopCar里面的数据return
}
//展示库存
- (void)show{
    NSLog(@"我们商店现在有%ld袋饼干,%ld袋面包,%ld瓶汽水",_biscuitArray.count,_breadArray.count,_drinkArray.count);
}
//对商品进行初始化
- (instancetype)init
{
    self = [super init];
    if (self) {
        _breadArray = [NSMutableArray array];
        _biscuitArray = [NSMutableArray array];
        _drinkArray = [NSMutableArray array];
    }
    return self;
}
@end
