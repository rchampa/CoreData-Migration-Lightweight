//
//  ViewController.h
//  Test Core Data
//
//  Created by Ricardo Champa on 23/04/16.
//  Copyright © 2016 Clickmobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)unwindToTable:(UIStoryboardSegue *)unwindSegue;
@end

