#import "Shop.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Shop * shop = [[Shop alloc]init];
        [shop welcome];
    }
    return 0;
}
