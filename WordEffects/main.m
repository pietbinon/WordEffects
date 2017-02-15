//
//  main.m
//  WordEffects
//
//  Created by Pierre Binon on 2017-02-14.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {
       
        NSLog (@"Please choose an option:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n");
        
        char inputChar[255];
        fgets(inputChar, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String: inputChar];
        NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([input isEqualToString: @"1"]) {
            NSLog (@"Enter the string you want to operate on:\n");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSString *uppercaseString = [input uppercaseString];
            NSLog (@"Your string in uppercase letters is: %@", uppercaseString);
            
        } else if ([input isEqualToString: @"2"]) {
            NSLog (@"Enter the string you want to operate on:\n");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSString *lowercaseString = [input lowercaseString];
            NSLog (@"Your string in lowercase letters is: %@", lowercaseString);
            
        } else if ([input isEqualToString: @"3"]) {
            NSLog (@"Enter the string you want to operate on:\n");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSInteger inputInteger = [input integerValue];
            NSLog (@"Your numberized string is: %ld", (long)inputInteger);
            
        } else if ([input isEqualToString: @"4"]) {
            NSLog (@"Enter the string you want to operate on:\n");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *canadianizedString = [input stringByAppendingString: @", eh?"];
            NSLog (@"Your canadianized string is: %@", canadianizedString);
            
        } else if ([input isEqualToString: @"5"]) {
            NSLog (@"Enter the string you want to operate on:\n");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *questionOrExclaimationString = [input substringWithRange: NSMakeRange(input.length - 1, 1)];
            
            if ([questionOrExclaimationString isEqualToString: @"?"])
                NSLog (@"I don't know");
            else if ([questionOrExclaimationString isEqualToString: @"!"])
                NSLog (@"Whoa, calm down!");
            
        } else {
            NSLog (@"Enter the string you want to operate on:\n");
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String: inputChar];
            NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet characterSetWithRange:NSMakeRange(1, inputString.length)]];
            
            NSString *newString = [input stringByReplacingOccurrencesOfString: @" " withString: @"-"];
            NSLog (@"%@", newString);
            }
        }
    return 0;
    }
}
