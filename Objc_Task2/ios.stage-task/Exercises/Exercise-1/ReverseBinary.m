#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 reversed = 0;
    for (int i = 0; i < 8; ++i) {
        reversed = (reversed << 1) | (n & 0x01);
           n >>= 1;
       }
    return reversed;
}
