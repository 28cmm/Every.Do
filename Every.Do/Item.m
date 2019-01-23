//
//  Items.m
//  Every.Do
//
//  Created by Yilei Huang on 2019-01-22.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Item.h"

@implementation Item
- (instancetype)initWithTitle:(NSString*)input detail:(NSString*)detail
{
    self = [super init];
    if (self) {
        _title = input;
        _detail = detail;
    }
    return self;
}



@end
