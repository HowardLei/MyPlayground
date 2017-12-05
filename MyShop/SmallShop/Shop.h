#import "Shelf.h"
#import "Goods.h"
#import <Foundation/Foundation.h>

@interface Shop : NSObject
@property Shelf * shelf;
- (void)welcome;//欢迎语
- (float)getMoneyWithTemp:(NSMutableArray *)temp;//计算价格
- (instancetype)init;//商店的初始化
@end
