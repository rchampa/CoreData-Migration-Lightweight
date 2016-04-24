//
//  AddNoteViewController.h
//  Test Core Data
//
//  Created by Ricardo Champa on 23/04/16.
//  Copyright © 2016 Clickmobile. All rights reserved.
//

#import "ViewController.h"

@interface AddNoteViewController : ViewController
@property (weak, nonatomic) IBOutlet UITextField *tf_titulo;
@property (weak, nonatomic) IBOutlet UITextField *tf_mensaje;
- (IBAction)guardarNota:(id)sender;

@end
