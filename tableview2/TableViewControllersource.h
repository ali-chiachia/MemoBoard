//
//  TableViewControllersource.h
//  tableview2
//
//  Created by Mac User on 2015/2/17.
//  Copyright (c) 2015年 www. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableViewControllersource;

@protocol TableViewControllersourceDelegate <NSObject>

-(void) TableViewControllersource:(TableViewControllersource *)Controller didSelectedGame:(NSString *)game;

@end

@interface TableViewControllersource : UITableViewController
@property (nonatomic,strong) NSArray *games;
@property (nonatomic,strong) NSString *gamefromtwo;
@property (strong,nonatomic) id<TableViewControllersourceDelegate> Delegate;
@end
