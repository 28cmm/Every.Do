//
//  ViewController.m
//  Every.Do
//
//  Created by Yilei Huang on 2019-01-22.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "ViewController.h"
#import "ItemDetailViewController.h"
#import "AddViewController.h"
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addButton;
@property NSMutableArray *itemArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.itemArray = [@[
                       [[Item alloc]initWithTitle:@"get Up" detail:@"please get up now or you gonna be late"],
                       [[Item alloc]initWithTitle:@"shopping Up"detail:@"you need a tomatoo, but also  sometihng else"],
                       [[Item alloc]initWithTitle:@"eat"detail:@"dont eat you are too fat"],
                       [[Item alloc]initWithTitle:@"sleep Up" detail:@"sleep 10 hours a day"]] mutableCopy];
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return  YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [UIView animateWithDuration:1 animations:^{
        UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        NSString *item =self.itemArray[indexPath.row];
        if(cell.accessoryType ==UITableViewCellAccessoryCheckmark){
            [self.itemArray removeObject:item];
        }else{
             cell.accessoryType = UITableViewCellAccessoryCheckmark;
            [self.itemArray removeObject:self.itemArray[indexPath.row]];
            [self.itemArray addObject:item];
            
        }
        [self.tableView reloadData];
       
        //self.checkedIndexPath = indexPath;
        
       
    }];
   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"showDetail" sender:indexPath];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([[segue identifier] isEqual:@"showDetail"]){
        NSIndexPath *indexPath =(NSIndexPath*)sender;
        ItemDetailViewController *itemDetailView = segue.destinationViewController;
        //CGRect myRect = [self.tableView rectForRowAtIndexPath:NSIndexPath];
        //[itemDetailView showDetail:sender.indexPathForSelectedRow];
        
        [itemDetailView showDetail:self.itemArray[indexPath.row]];
        
    }
   
    
}
//-prepareForUn

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];
    
    //    Episode *episode = self.episodes[indexPath.section][indexPath.row];
    
   
    Item *item = self.itemArray[indexPath.row];
    cell.textLabel.text = item.title;

    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemArray.count;
}
- (IBAction)addButton:(UIBarButtonItem *)sender {
//    AddViewController *addView =[AddViewController new];
//    [self.navigationController pushViewController:addView animated:NO];
   [self performSegueWithIdentifier:@"addDetail" sender:self];
}

- (IBAction)unwindToMain:(UIStoryboardSegue *)unwindSegue
{
    AddViewController *addVC = unwindSegue.sourceViewController;
 
    Item *item =[[Item alloc]initWithTitle:addVC.toDoField.text detail:addVC.detailField.text];
    [self.itemArray addObject:item];
    [self.tableView reloadData];
}



@end
