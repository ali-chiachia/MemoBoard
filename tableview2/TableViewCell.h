//
//  TableViewCell.h
//  tableview2
//
//  Created by Mac User on 2015/2/17.
//  Copyright (c) 2015年 www. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageCell;

@property (weak, nonatomic) IBOutlet UILabel *playerCell;
@property (weak, nonatomic) IBOutlet UILabel *gameCell;


@end
