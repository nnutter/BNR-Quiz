//
//  QuizViewController.m
//  Quiz
//
//  Created by nnutter on 8/3/12.
//
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        questions = [NSMutableArray new];
        answers = [NSMutableArray new];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    currentQuestionIndex = currentQuestionIndex % [questions count];
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying question: %@", question);
    [questionField setText:question];
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying answer: %@", answer);
    [answerField setText:answer];
}

@end
