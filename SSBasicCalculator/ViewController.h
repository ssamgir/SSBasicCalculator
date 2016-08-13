//
//  ViewController.h
//  SSBasicCalculator
//
//  Created by Amit Bobade on 06/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{ Plus,Minus,Multiply,Divide} performOperation;


@interface ViewController : UIViewController
{

    
    IBOutlet UITextField *displayText;

    IBOutlet UIButton *buttonClear;

    NSString * stoareResult;
    
    performOperation operation;
    
}

- (IBAction)button0:(id)sender;
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;
- (IBAction)button6:(id)sender;
- (IBAction)button7:(id)sender;
- (IBAction)button8:(id)sender;
- (IBAction)button9:(id)sender;
- (IBAction)buttonplus:(id)sender;

- (IBAction)buttonMulti:(id)sender;
- (IBAction)buttonminus:(id)sender;
- (IBAction)buttonDivide:(id)sender;

- (IBAction)buttonEqual:(id)sender;


@end

