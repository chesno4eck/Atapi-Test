//
//  Disc.m
//  atapiTest
//
//  Created by Дмитрий Алиев on 15/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import "Disc.h"

@implementation Disc

//@synthesize name;

- (instancetype)initWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code discType :(DiscType) discType andDiscContentType :(DiscContentType) discContentType {
    
    self.name = name;
    self.price = price;
    self.code = code;
    self.discType = discType;
    self.discContentType = discContentType;
    
    NSLog(@"succes init %@", self.code);
    
    return self;
}


- (void) s {
    

}

@end
