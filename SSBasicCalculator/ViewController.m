//
//  ViewController.m
//  SSBasicCalculator
//
//  Created by Amit Bobade on 06/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button0:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@0",displayText.text];
    }

- (IBAction)button5:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@5",displayText.text];
    }

- (IBAction)button6:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@6",displayText.text];
    }

- (IBAction)button7:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@7",displayText.text];
    }

- (IBAction)button8:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@8",displayText.text];
    }

- (IBAction)button9:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@9",displayText.text];
    }

- (IBAction)buttonplus:(id)sender
    {
        operation = Plus;
        stoareResult = displayText.text;
        displayText.text=@"";
    }



- (IBAction)button1:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@1",displayText.text];
    }

- (IBAction)button2:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@2",displayText.text];
    }

- (IBAction)button3:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@3",displayText.text];
    }

- (IBAction)button4:(id)sender
    {
    displayText.text=[NSString stringWithFormat:@"%@4",displayText.text];
    }

- (IBAction)buttonMulti:(id)sender
{
    operation = Multiply;
    stoareResult = displayText.text;
    displayText.text=@"";
}



- (IBAction)buttonminus:(id)sender
{
    operation = Minus;
    stoareResult = displayText.text;
    displayText.text=@"";
}

- (IBAction)buttonDivide:(id)sender {
    operation = Divide;
    stoareResult = displayText.text;
    displayText.text=@"";
}



- (IBAction)buttonEqual:(id)sender
{
 
    NSString *val = displayText.text;
    
    switch(operation) {
        case Plus :
            displayText.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[stoareResult longLongValue]];
            break;
        case Minus:
            displayText.text= [NSString stringWithFormat:@"%qi",[val longLongValue]-[stoareResult longLongValue]];
            break;
        case Divide:
            displayText.text= [NSString stringWithFormat:@"%qi",[val longLongValue]/[stoareResult longLongValue]];
            break;
        case Multiply:
            displayText.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[stoareResult longLongValue]];
            break;
    }
}
    



- (IBAction)buttonClear:(id)sender
    {
    displayText.text=@"";
    }


@end
