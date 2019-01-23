//
//  AddViewController.h
//  Every.Do
//
//  Created by Yilei Huang on 2019-01-22.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *toDoField;
@property (weak, nonatomic) IBOutlet UITextField *detailField;
@end

NS_ASSUME_NONNULL_END
