//
//  TableViewController2.h
//  tableview2
//
//  Created by Mac User on 2015/2/17.
//  Copyright (c) 2015年 www. All rights reserved.
//

#import <UIKit/UIKit.h>


@class TableViewController2;

@protocol TableViewController2Delegate <NSObject>

@end


@interface TableViewController2 : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *playerName;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property(strong,nonatomic) NSString *selectedGame;

@property(nonatomic,weak) id<TableViewController2Delegate>delegate;

@end
