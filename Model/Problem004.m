//
//  Problem004.m
//  ProjectEuler-iOS
//
//  Created by Joseph Wilkerson on 3/22/15.
//  Copyright (c) 2015 Joseph Wilkerson. All rights reserved.
//

/*
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 
 Find the largest palindrome made from the product of two 3-digit numbers.
 */

#import "Problem004.h"

@implementation Problem004

- (void)solve
{
    [super solve];
    
    /*
     11 22 33 44 55 66 77 88 99
     101 121 131 141 151 161 171 181 191
     
     
     11*11=121 11*22=242 11*33=363 11*44=484 11*56=616 11*67=737 11*78=858 11*89=979 11*91=1001
     99*19=1881 88*28=2772 99*37=3663 99*46=4554 99*55=5445 99*64=6336 99*73=7227 99*82=8118 99*91=9009
     */
    
    int largestPalindrome = 0;
    int largestFactorI = 0;
    int largestFactorJ = 0;
    
    for (int i = 999; i > 99; i--) {
        for (int j = 999; j > 99; j--) {
            int product = i*j;
            if ([self numberIsPalindrome:product]) {
                if (largestPalindrome < product) {
                    largestPalindrome=product;
                    largestFactorI = i;
                    largestFactorJ = j;
                }
            }
            if (i < largestFactorI && i < largestFactorJ && j < largestFactorI && j < largestFactorJ) {
                self.answerString = [NSString stringWithFormat:@"%d * %d = %d",largestFactorI, largestFactorJ, largestPalindrome];
                return;
            }
        }
    }
    self.answerString = [NSString stringWithFormat:@"%d * %d = %d",largestFactorI, largestFactorJ, largestPalindrome];
    
}


- (BOOL)numberIsPalindrome:(int)number
{
    NSString *numberAsString = [NSString stringWithFormat:@"%d",number];
    
    if ([numberAsString isEqualToString:[self reverseString:numberAsString]]) {
        return YES;
    }
    
    return NO;
}

- (NSString *)reverseString:(NSString *)string
{
    NSMutableString *reversedString = [NSMutableString string];
    [string enumerateSubstringsInRange:NSMakeRange(0, string.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        
        [reversedString insertString:substring atIndex:0];
        
    }];
    
    return reversedString;
}

@end
