//
//  Book.m
//  atapiTest
//
//  Created by Дмитрий Алиев on 15/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import "Book.h"

@implementation Book

- (instancetype)initCookBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code nummberOfPages :(NSNumber *)nummberOfPages andIngredient :(NSString *)ingredient {
   
    Book * book = [[Book alloc] initBookWithName:name price:price code:code andNummberOfPages:nummberOfPages];
    book.mainIngredient = ingredient;
    book.bookCategory = @"Cookery";
    return book;
}

- (instancetype)initProgrammingBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code nummberOfPages :(NSNumber *)nummberOfPages andLang :(NSString *)lang {
   
    Book * book = [[Book alloc] initBookWithName:name price:price code:code andNummberOfPages:nummberOfPages];
    book.programmingLang = lang;
    book.bookCategory = @"Programming";
    return book;
}

- (instancetype)initEsotericBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code nummberOfPages :(NSNumber *)nummberOfPages andAge :(NSNumber *)age {
    
    Book * book = [[Book alloc] initBookWithName:name price:price code:code andNummberOfPages:nummberOfPages];
    book.age = age;
    book.bookCategory = @"Esoteric";
    return book;
}


- (instancetype)initBookWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code andNummberOfPages :(NSNumber *)nummberOfPages{
    
    self.name = name;
    self.price = price;
    self.code = code;
    self.numberOfPages = nummberOfPages;
    
    return self;
}


@end
