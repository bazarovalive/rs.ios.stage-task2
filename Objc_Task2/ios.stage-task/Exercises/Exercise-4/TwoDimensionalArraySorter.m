#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil || array.count == 0 || ![array[0] isKindOfClass:NSArray.class]){
           return @[];
    }
    NSMutableArray<NSNumber *> *numbersSubarray = [NSMutableArray new];
    NSMutableArray<NSString *> *charactersSubarray = [NSMutableArray new];
    NSArray *subarray = array;
    for (subarray in array){
        for (id element in subarray){
            if ([element isKindOfClass:NSNumber.class])
                [numbersSubarray addObject:element];
            else
                [charactersSubarray addObject:element];
        }
    }
    if (charactersSubarray.count == 0) {
        return [numbersSubarray sortedArrayUsingSelector:@selector(compare:)];
    }
    
    if (numbersSubarray.count == 0) {
        return [charactersSubarray sortedArrayUsingSelector:@selector(compare:)];
    }
        return @[[numbersSubarray sortedArrayUsingSelector:@selector(compare:)],
                 [charactersSubarray sortedArrayUsingSelector:@selector(compare:)]];
}

@end
