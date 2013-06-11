//
//  srrChooseLeagueViewController.m
//  swissrugbyresults
//
//  Created by Michel Georgy on 6/10/13.
//  Copyright (c) 2013 tamtec.ch. All rights reserved.
//

#import "srrChooseLeagueViewController.h"

@interface srrChooseLeagueViewController ()
@end

@implementation srrChooseLeagueViewController

NSArray *arrStatus;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    arrStatus = [[NSArray alloc] initWithObjects:@"Womens League", @"League A", @"League B", @"League C", @"League 1 East", @"League 1 West", @"U18 League", @"U16 League", nil];
    [self.leaguePicker selectRow:1 inComponent:0 animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //One column
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //set number of rows
    return arrStatus.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //set item per row
    return [arrStatus objectAtIndex:row];
}

@end
