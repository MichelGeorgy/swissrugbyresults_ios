//
//  srrChooseLeagueViewController.h
//  swissrugbyresults
//
//  Created by Michel Georgy on 6/10/13.
//  Copyright (c) 2013 tamtec.ch. All rights reserved.
//

#import <UIKit/UIKit.h>
 
@interface srrChooseLeagueViewController : UIViewController  <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *leaguePicker;

@end
