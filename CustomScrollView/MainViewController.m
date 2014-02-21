//
//  MainViewController.m
//  CustomScrollView
//
//  Created by Anthony Powles on 2/21/14.
//  Copyright (c) 2014 Anthony Powles. All rights reserved.
//

#import "MainViewController.h"
#import "RedViewController.h"
#import "GreenViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) NSMutableArray *pagedControllers;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

	RedViewController *redVC = [[RedViewController alloc] init];
	GreenViewController	*greenVC = [[GreenViewController alloc] init];

	self.pagedControllers = [[NSMutableArray alloc] init];
	[self.pagedControllers addObject:redVC];
	[self.pagedControllers addObject:greenVC];

	self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * 2, self.scrollView.frame.size.height);
	redVC.view.frame = CGRectMake(0, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
	greenVC.view.frame = CGRectMake(self.scrollView.frame.size.width, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);

//	redVC.view.backgroundColor = [UIColor blueColor];
//	greenVC.view.backgroundColor = [UIColor yellowColor];

	[self.scrollView addSubview:redVC.view];
	[self.scrollView addSubview:greenVC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
