#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    
    NSArray *timeWords = @[@"zero",@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"nine",@"ten",@"eleven",@"twelve",@"thirteen",@"fourteen",@"fifteen",@"sixteen",@"seventeen",@"eighteen",@"nineteen",@"twenty",@"twenty one",@"twenty two",@"twenty three",@"twenty four",@"twenty five",@"twenty six",@"twenty seven",@"twenty eight",@"twenty nine"];
    
    if([minutes intValue] > 60){
        return @"";
    }else if ([minutes intValue] == 0){
        NSString *returnString = [[NSString alloc] initWithFormat:@"%@ o' clock", timeWords[[hours intValue]]];
        return returnString;
        //@"%@ o' clock\n", timeWords[[hours intValue]];
    }else if ([minutes intValue] == 1){
        NSLog(@"one minute past %@", timeWords[[hours intValue]]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"one minute past %@", timeWords[[hours intValue]]];
        return returnString;
    }else if ([minutes intValue] == 59){
        NSLog(@"one minute to %@", timeWords[([hours intValue] % 12) + 1]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"one minute to %@", timeWords[([hours intValue] % 12) + 1]];
        return returnString;
    }else if ([minutes intValue] == 15){
        NSLog(@"quarter past %@", timeWords[[hours intValue]]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"quarter past %@", timeWords[[hours intValue]]];
        return returnString;
    }else if ([minutes intValue] == 30){
        NSLog(@"half past %@", timeWords[[hours intValue]]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"half past %@", timeWords[[hours intValue]]];
        return returnString;
    }else if ([minutes intValue] == 45){
        NSLog(@"quarter to %@", timeWords[([hours intValue] % 12) + 1]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"quarter to %@", timeWords[([hours intValue] % 12) + 1]];
        return returnString;
    }else if ([minutes intValue] <= 30){
        NSLog(@"%@ minutes past %@", timeWords[[minutes intValue]], timeWords[[hours intValue]]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"%@ minutes past %@", timeWords[[minutes intValue]], timeWords[[hours intValue]]];
        return returnString;
    }else if ([minutes intValue] > 30){
        NSLog(@"%@ minutes to %@\n", timeWords[60 - [minutes intValue]],timeWords[([hours intValue] % 12) + 1]);
        NSString *returnString = [[NSString alloc] initWithFormat:@"%@ minutes to %@", timeWords[60 - [minutes intValue]],timeWords[([hours intValue] % 12) + 1]];
        return returnString;
    }
    return @"";
}
@end
