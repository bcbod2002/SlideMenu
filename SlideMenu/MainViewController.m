//
//  MainViewController.m
//  SlideMenu
//
//  Created by shinsoft on 2014/4/18.
//  Copyright (c) 2014年 shinsoft. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    imageArray = [[NSArray alloc] initWithObjects:@"0.tiff",@"1.tiff",@"2.tiff",@"3.tiff",@"4.tiff",@"5.tiff",@"6.tiff",@"7.tiff",nil];
    testtmutarray_image = [[NSMutableArray alloc] initWithObjects:@"0.tiff", @"1.tiff", @"2.tiff", @"3.tiff", @"4.tiff", @"5.tiff", @"6.tiff", @"7.tiff", @"1.tiff", @"2.tiff", nil];
    testtmutarray_label = [[NSMutableArray alloc] initWithObjects:@"小白2", @"Min", @"689", @"猜Q3", @"Q資4", @"WRETWRE", @"GANK", @"POKER", @"站著穿", @"123", nil];
    
    
    SlideMenu *test_slide = [[SlideMenu alloc] initWithLocate:Locate_Buttom Item_images:testtmutarray_image Item_labels:testtmutarray_label];
    test_slide.delegate = self;
    [self.view addSubview:test_slide];
    
    SlideMenu *phony_slide = [[SlideMenu alloc] initWithLocate:Locate_Top Item_images:testtmutarray_image Item_labels:testtmutarray_label];
    phony_slide.delegate = self;
    [self.view addSubview:phony_slide];
}

-(void)touched_item_lable_text:(NSString *)chosen_item
{
    NSLog(@"Selected item is %@", chosen_item);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
