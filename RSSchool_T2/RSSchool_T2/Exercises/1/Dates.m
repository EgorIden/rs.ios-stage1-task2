#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    
    components.day = [day intValue];
    components.month = [month intValue];
    components.year = [year intValue];
    
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    
    if ([components isValidDateInCalendar:calendar]) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        formatter.locale = [NSLocale localeWithLocaleIdentifier:@"ru_RU"];
        formatter.dateFormat = @"d MMMM, EEEE";
        
        NSDate *date = [calendar dateFromComponents:components];
        
        NSString *dateString = [formatter stringFromDate:date];
        
        return dateString;
        
    }else{
        return @"Такого дня не существует";
    }
}

@end
