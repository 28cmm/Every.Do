//
//  ItemDetailViewController.m
//  Every.Do
//
//  Created by Yilei Huang on 2019-01-22.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "ItemDetailViewController.h"

@interface ItemDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ItemDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // NSArray *array
    self.textView.text = self.itemInfo;
    self.textView.textAlignment = NSTextAlignmentCenter;
    
    // Do any additional setup after loading the view.
}
-(void)showDetail:(Item*)input{
    self.itemInfo = input.detail;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
