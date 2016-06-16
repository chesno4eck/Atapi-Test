//
//  Disc.h
//  atapiTest
//
//  Created by Дмитрий Алиев on 15/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import "Product.h"



@interface Disc : Product

typedef enum DiscType{
    DiscTypeCD,
    DiscTypeDVD
} DiscType;

typedef enum DiscContentType {
    DiscContentTypeMusic,
    DiscContentTypeVideo,
    DiscContentTypeSoft
} DiscContentType;

@property (nonatomic) NSString * discType;
@property (nonatomic) NSString * discContentType;

- (instancetype)initWithName :(NSString *)name price :(NSNumber *)price code :(NSString *)code discType :(DiscType) discType andDiscContentType :(DiscContentType) discContentType;

@end
