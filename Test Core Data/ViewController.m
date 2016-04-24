//
//  ViewController.m
//  Test Core Data
//
//  Created by Ricardo Champa on 23/04/16.
//  Copyright © 2016 Clickmobile. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Nota.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *tableData;
}

@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    tableData = [AppDelegate getNotas];
    [tableView reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    Nota* nota = [tableData objectAtIndex:indexPath.row];
    NSString* texto_fila = [NSString stringWithFormat:@"%@: %@", nota.titulo, nota.mensaje];
    cell.textLabel.text = texto_fila;
    return cell;
}


- (IBAction)unwindToTable:(UIStoryboardSegue *)unwindSegue
{
}

@end
