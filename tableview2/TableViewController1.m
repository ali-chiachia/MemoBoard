//
//  TableViewController1.m
//  tableview2
//
//  Created by Mac User on 2015/2/17.
//  Copyright (c) 2015年 www. All rights reserved.
//

#import "TableViewController1.h"
#import "TableViewController2.h"
#import "TableViewCell.h"


@interface TableViewController1 ()<TableViewController2Delegate>
@property (strong,nonatomic) NSMutableArray *objects;

@end

@implementation TableViewController1



- (void)viewDidLoad {
    [super viewDidLoad];
    self.objects=[NSMutableArray array];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(IBAction)back:(UIStoryboardSegue *)segue{
    
}

-(UIImage *)imageForRating:(NSInteger)rating
{
    switch (rating) {
        case 1:return [UIImage imageNamed:@"1Star.png"];
        case 2:return [UIImage imageNamed:@"2Stars.png"];
        case 3:return [UIImage imageNamed:@"3Stars.png"];
        case 4:return [UIImage imageNamed:@"4Stars.png"];
        case 5:return [UIImage imageNamed:@"5Stars.png"];
    }
    return nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.objects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *mycell=[tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    //    mycell.gameCell=[self.objects[0] objectForKey:@"game"];
//    mycell.imageCell=[self.objects[0] objectForKey:@"image"];
//    [mycell.imageCell setImage:[self.objects[0] objectForKey:@"image"]];
    return mycell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"1stto2nd"]){
        UINavigationController *vc=[segue destinationViewController];
        TableViewController2 *Table2VC=[vc.viewControllers objectAtIndex:0];
        //第一個view為零
        Table2VC.delegate=self;
    }
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
