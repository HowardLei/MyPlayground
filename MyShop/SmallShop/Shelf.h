#import "Biscuit.h"
#import "Bread.h"
#import "Drinks.h"
#import <Foundation/Foundation.h>

@interface Shelf : NSObject
@property NSMutableArray * biscuitArray;//饼干货架
@property NSMutableArray * breadArray;//面包货架
@property NSMutableArray * drinkArray;//饮料货架
//加入商品
- (void)addGoodsWithName:(NSString *)name andNumber:(int)number;
//取商品
- (NSMutableArray *)getGoodsWithName:(NSString *)name andNumber:(int)number;
//对商品进行初始化
- (instancetype)init;
@end
