//
//  MainViewController.h
//  SlideMenu
//
//  Created by shinsoft on 2014/4/18.
//  Copyright (c) 2014年 shinsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideMenu.h"


@interface MainViewController : UIViewController<SlideMenuDelegate>
{
    NSArray *imageArray;
    NSMutableArray *testtmutarray_image;
    NSMutableArray *testtmutarray_label;
}

@end
