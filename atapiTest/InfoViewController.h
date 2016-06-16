//
//  InfoViewController.h
//  atapiTest
//
//  Created by Дмитрий Алиев on 16/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Disc.h"
#import "Book.h"

@interface InfoViewController : UIViewController

@property (nonatomic) Book * book;
@property (nonatomic) Disc * disc;

@end
