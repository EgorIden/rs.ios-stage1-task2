#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    
    NSString *upperA = [a uppercaseString];

    NSString *result = @"";
    
    for (int i=0; i<upperA.length; i++) {
        char subsA = [upperA characterAtIndex:i];
        for (int q=0; q<b.length; q++) {
            char subsB = [b characterAtIndex:q];
            if (subsB==subsA) {
                NSString *addChar = [NSString stringWithFormat:@"%c", subsA];
                result = [result stringByAppendingString:(addChar)];
            }
        }
    }
    
    return [result isEqualToString:b] ? @"YES" : @"NO";
}
@end
