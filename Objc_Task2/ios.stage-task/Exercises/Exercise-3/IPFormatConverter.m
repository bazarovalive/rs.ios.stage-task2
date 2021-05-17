#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray.count == 0){
        return @"";
    }
    NSMutableString *ipAddress = [NSMutableString stringWithString:@""];
    for (int i=0; i<4; i++){
        if (i < numbersArray.count){
            if ([numbersArray[i] integerValue] < 0) {
                return @"Negative numbers are not valid for input.";
            }
            if ([numbersArray[i] integerValue] > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            [ipAddress appendString: [numbersArray[i] stringValue]];
        } else {
            [ipAddress appendString: @"0"];
    }
    if (i != 3) {
        [ipAddress appendString:@"."];
    }
    }
        return ipAddress;
}

@end
