//
//  AddNoteViewController.m
//  Test Core Data
//
//  Created by Ricardo Champa on 23/04/16.
//  Copyright © 2016 Clickmobile. All rights reserved.
//

#import "AppDelegate.h"
#import "AddNoteViewController.h"
#import <CoreData/CoreData.h>
#import "Nota.h"


@interface AddNoteViewController ()

@end

@implementation AddNoteViewController
@synthesize tf_titulo;
@synthesize tf_mensaje;


- (IBAction)guardarNota:(id)sender {
    

    AppDelegate* delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext* context = delegate.managedObjectContext;
    
    Nota *nota = [Nota personaWithContext:context];
    nota.mensaje = tf_mensaje.text;
    [delegate saveContext];

    [self.navigationController popViewControllerAnimated:YES];

    
}
@end
