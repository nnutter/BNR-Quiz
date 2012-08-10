//
//  QuizViewController.h
//  Quiz
//
//  Created by nnutter on 8/3/12.
//
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // The Model Objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // The View Objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
