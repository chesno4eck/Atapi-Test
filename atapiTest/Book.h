//
//  Book.h
//  atapiTest
//
//  Created by Дмитрий Алиев on 15/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import "Product.h"

@interface Book : Product

@property (strong, nonatomic) NSString *bookCategory;

@property (strong, nonatomic) NSNumber *numberOfPages;

@property (strong, nonatomic) NSString *programmingLang;
@property (strong, nonatomic) NSString *mainIngredient;
@property (strong, nonatomic) NSNumber *age;


- (instancetype)initCookBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code nummberOfPages :(NSNumber *)nummberOfPages andIngredient :(NSString *)ingredient;
- (instancetype)initProgrammingBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code nummberOfPages :(NSNumber *)nummberOfPages andLang :(NSString *)lang;
- (instancetype)initEsotericBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code nummberOfPages :(NSNumber *)nummberOfPages andAge :(NSNumber *)age;



@end
