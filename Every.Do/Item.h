//
//  Items.h
//  Every.Do
//
//  Created by Yilei Huang on 2019-01-22.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject
- (instancetype)initWithTitle:(NSString*)input detail:(NSString*)detail;
@property NSString * title;
@property NSString *detail;
@end

NS_ASSUME_NONNULL_END
