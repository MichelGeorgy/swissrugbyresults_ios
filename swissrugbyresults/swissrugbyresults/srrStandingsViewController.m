//
//  srrSecondViewController.m
//  swissrugbyresults
//
//  Created by Michel Georgy on 6/9/13.
//  Copyright (c) 2013 tamtec.ch. All rights reserved.
//

#import "srrStandingsViewController.h"

@interface srrStandingsViewController ()

@end

@implementation srrStandingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Remove table cell separator
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // Assign our own backgroud for the view
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    // Add padding to the top of the table view
    UIEdgeInsets inset = UIEdgeInsetsMake(5, 0, 0, 0);
    self.tableView.contentInset = inset;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UIImage *)cellBackgroundForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowCount = [self tableView:[self tableView] numberOfRowsInSection:indexPath.section];
    NSInteger rowIndex = indexPath.row;
    UIImage *background = nil;
    
    if (rowIndex == 0) {
        background = [UIImage imageNamed:@"cell_top.png"];
    } else if (rowIndex == rowCount - 1) {
        background = [UIImage imageNamed:@"cell_bottom.png"];
    } else {
        background = [UIImage imageNamed:@"cell_middle.png"];
    }
    
    return background;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Display recipe in the table cell
    //Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    if(indexPath.row == 0) {
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"1";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"Hermance RRC";
    } else if (indexPath.row == 1){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"2";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"RC Avusy";
        
    }
    else if (indexPath.row == 2){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"3";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"Nyon RC";
        
    }
    else if (indexPath.row == 3){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"4";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"RC CMSG";
        
    }
    else if (indexPath.row == 4){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"5";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"GC Zürich";
        
    }
    else if (indexPath.row == 5){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"6";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"RC Genève";
        
    }
    else if (indexPath.row == 6){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"7";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"Stade Lausanne";
        
    }
    else if (indexPath.row == 7){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"8";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"Lausanne UC";
        
    }
    else if (indexPath.row == 8){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"9";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"RFC Basel";
        
    }
    else if (indexPath.row == 9){
        UILabel *rankLabel = (UILabel *)[cell viewWithTag:100];
        rankLabel.text = @"10";
        
        UILabel *teamNameLabel = (UILabel *)[cell viewWithTag:101];
        teamNameLabel.text = @"RC Yverdon";
        
    }
    // Assign our own background image for the cell
    UIImage *background = [self cellBackgroundForRowAtIndexPath:indexPath];
    
    UIImageView *cellBackgroundView = [[UIImageView alloc] initWithImage:background];
    cellBackgroundView.image = background;
    cell.backgroundView = cellBackgroundView;
    
    
    return cell;
}


@end
