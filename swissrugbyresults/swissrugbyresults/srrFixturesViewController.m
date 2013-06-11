//
//  srrFirstViewController.m
//  swissrugbyresults
//
//  Created by Michel Georgy on 6/9/13.
//  Copyright (c) 2013 tamtec.ch. All rights reserved.
//

#import "srrFixturesViewController.h"

@interface srrFixturesViewController ()

@end

@implementation srrFixturesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Remove table cell separator
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // Assign our own backgroud for the view
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    // Add padding to the top of the table view
   // UIEdgeInsets inset = UIEdgeInsetsMake(5, 0, 0, 0);
   // self.tableView.contentInset = inset;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
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
    if(indexPath.row % 2 == 0) {
        UIImageView *homeTeamImageView = (UIImageView *)[cell viewWithTag:100];
        homeTeamImageView.image = [UIImage imageNamed:@"rfcbasel.png"];
    
        UILabel *homeTeamPointsLabel = (UILabel *)[cell viewWithTag:101];
        homeTeamPointsLabel.text = @"41";
    
        UILabel *homeTeamNameLabel = (UILabel *)[cell viewWithTag:102];
        homeTeamNameLabel.text = @"RFC Basel";
    
        UIImageView *awayTeamImageView = (UIImageView *)[cell viewWithTag:200];
        awayTeamImageView.image = [UIImage imageNamed:@"hermancerrc.png"];
    
        UILabel *awayTeamPointsLabel = (UILabel *)[cell viewWithTag:201];
        awayTeamPointsLabel.text = @"19";
    
        UILabel *awayTeamNameLabel = (UILabel *)[cell viewWithTag:202];
        awayTeamNameLabel.text = @"Hermance RRC";
    } else {
        UIImageView *homeTeamImageView = (UIImageView *)[cell viewWithTag:100];
        homeTeamImageView.image = [UIImage imageNamed:@"nyonrc.png"];
        
        UILabel *homeTeamPointsLabel = (UILabel *)[cell viewWithTag:101];
        homeTeamPointsLabel.text = @"07";
        
        UILabel *homeTeamNameLabel = (UILabel *)[cell viewWithTag:102];
        homeTeamNameLabel.text = @"Nyon RC";
        
        UIImageView *awayTeamImageView = (UIImageView *)[cell viewWithTag:200];
        awayTeamImageView.image = [UIImage imageNamed:@"rcavusy.png"];
        
        UILabel *awayTeamPointsLabel = (UILabel *)[cell viewWithTag:201];
        awayTeamPointsLabel.text = @"24";
        
        UILabel *awayTeamNameLabel = (UILabel *)[cell viewWithTag:202];
        awayTeamNameLabel.text = @"RC Avusy";

    }
    // Assign our own background image for the cell
    UIImage *background = [self cellBackgroundForRowAtIndexPath:indexPath];
    
    UIImageView *cellBackgroundView = [[UIImageView alloc] initWithImage:background];
    cellBackgroundView.image = background;
    cell.backgroundView = cellBackgroundView;
    
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if(section == 0)
        return @"Sat 08.06.2013";
    else
        return @"Sat 01.06.2013";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {    // Or whatever orientation it will be presented in.
        return YES;
    }
    return NO;
}

- (BOOL)shouldAutorotate
{
    return NO;
}

@end
