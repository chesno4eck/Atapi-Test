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
    if (discType == DiscTypeDVD) {
        self.discType = @"DVD";
    } else  if (discType == DiscTypeCD) {
        self.discType = @"CD";
    }
    
    
    if (discContentType == DiscContentTypeSoft) {
        self.discContentType = @"Software";
    } else  if (discType == DiscContentTypeMusic) {
        self.discContentType = @"Music";
    } else  if (discType == DiscContentTypeVideo) {
        self.discContentType = @"Video";
    }
    
    return self;
}


- (void) s {
    

}

@end
