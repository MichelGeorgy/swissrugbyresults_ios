//
//  srrResultsViewController.m
//  swissrugbyresults
//
//  Created by Michel Georgy on 6/10/13.
//  Copyright (c) 2013 tamtec.ch. All rights reserved.
//

#import "srrResultsViewController.h"

@interface srrResultsViewController ()

@end

@implementation srrResultsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Remove table cell separator
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // Assign our own backgroud for the view
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"common_bg"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    // Add padding to the top of the table view
    //UIEdgeInsets inset = UIEdgeInsetsMake(5, 0, 0, 0);
    //self.tableView.con//contentInset = inset;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if(section == 0){
        return 3;
    } else {
        return 6;
    }

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


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
