//
//  InfoViewController.m
//  atapiTest
//
//  Created by Дмитрий Алиев on 16/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *productTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *codeLabel;
@property (weak, nonatomic) IBOutlet UILabel *mainInfo;
@property (weak, nonatomic) IBOutlet UILabel *additionalInfo;

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (_book) {
        [_nameLabel setText: _book.name];
        [_productTypeLabel setText: @"Book"];
        [_categoryLabel setText:_book.bookCategory];
        [_priceLabel setText: [NSString stringWithFormat:@"%@ RUB", _book.price]];
        [_codeLabel setText:_book.code];
        [_mainInfo setText: [NSString stringWithFormat:@"%@ pages", _book.numberOfPages]];
        if (_book.programmingLang) {
            [_additionalInfo setText:_book.programmingLang];
        } else if (_book.age) {
            [_additionalInfo setText: [NSString stringWithFormat:@"%@", _book.age]];
        } else if (_book.mainIngredient) {
            [_additionalInfo setText:_book.mainIngredient];
        }
    } else if (_disc) {
        [_nameLabel setText: _disc.name];
        [_productTypeLabel setText: @"Disc"];
        [_categoryLabel setText:_disc.discContentType];
        [_priceLabel setText: [NSString stringWithFormat:@"%@ RUB", _disc.price]];
        [_codeLabel setText:_disc.code];
        [_mainInfo setText: [NSString stringWithFormat:@"%@", _disc.discType]];
        [_additionalInfo setText:@""];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
