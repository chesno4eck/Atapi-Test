//
//  ProductsViewController.m
//  atapiTest
//
//  Created by Дмитрий Алиев on 15/06/16.
//  Copyright © 2016 Aliyev.Dmitry. All rights reserved.
//

#import "ProductsViewController.h"
#import "Product.h"
#import "InfoViewController.h"

@interface ProductsViewController () {
    NSArray * arrayOfDiscs;
    NSArray * arrayOfBooks;
}

@end

@implementation ProductsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Disc * disc0 = [[Disc alloc] initWithName:@"GTA" price:@132 code:@"code152" discType: DiscTypeDVD andDiscContentType:DiscContentTypeSoft];
    Disc * disc1 = [[Disc alloc] initWithName:@"Titanic" price:@99 code:@"code145" discType: DiscTypeDVD andDiscContentType:DiscContentTypeVideo];
    Disc * disc2 = [[Disc alloc] initWithName:@"Eminem" price:@59 code:@"code472" discType: DiscTypeCD andDiscContentType:DiscContentTypeMusic];
    Book * book0 = [[Book alloc] initProgrammingBookWithName:@"Patterns" price:@400 code:@"code7" nummberOfPages:@500 andLang:@"ObjC"];
    Book * book1 = [[Book alloc] initProgrammingBookWithName:@"SwiftBook" price:@300 code:@"code17" nummberOfPages:@400 andLang:@"Swift"];
    Book * book2 = [[Book alloc] initCookBookWithName:@"Recipes" price:@99 code:@"code91" nummberOfPages:@41 andIngredient:@"Meat"];

    arrayOfDiscs = [[NSArray alloc]initWithObjects: disc0, disc1, disc2, nil];
    arrayOfBooks = [[NSArray alloc]initWithObjects: book0, book1, book2, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return arrayOfDiscs.count;
    } else {
        return arrayOfBooks.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = ((Disc *)arrayOfDiscs[indexPath.row]).name;
        cell.detailTextLabel.text = ((Disc *)arrayOfDiscs[indexPath.row]).discContentType;
    } else if (indexPath.section == 1) {
        cell.textLabel.text = ((Book *)arrayOfBooks[indexPath.row]).name;
        cell.detailTextLabel.text = ((Book *)arrayOfBooks[indexPath.row]).bookCategory;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    InfoViewController *infoViewController = [storyboard instantiateViewControllerWithIdentifier:@"info"];

    if (indexPath.section == 0) {
        infoViewController.disc = arrayOfDiscs[indexPath.row];
    } else  if (indexPath.section == 1) {
        infoViewController.book = arrayOfBooks[indexPath.row];
    }
    [self.navigationController pushViewController:infoViewController animated:YES];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue destinationViewController].restorationIdentifier  isEqual: @"info"]){
//        ((InfoViewController *)[segue destinationViewController]).nameString = @"asd";
//    }
//}

@end
