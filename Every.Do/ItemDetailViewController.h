//
//  ItemDetailViewController.h
//  Every.Do
//
//  Created by Yilei Huang on 2019-01-22.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"
NS_ASSUME_NONNULL_BEGIN

@interface ItemDetailViewController : UIViewController
-(void)showDetail:(Item*)input;
@property NSString *itemInfo;
@end

NS_ASSUME_NONNULL_END
