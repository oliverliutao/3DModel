//
//  ViewController.m
//  SceneKitDemo
//
//  Created by TAO on 10/4/17.
//  Copyright © 2017 TAO. All rights reserved.
//

#import "ViewController.h"
#import <SceneKit/SceneKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SCNView *mySceneView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.mySceneView.scene = [SCNScene sceneNamed:@"house.dae"];
    self.mySceneView.allowsCameraControl = YES;
    self.mySceneView.autoenablesDefaultLighting = YES;
    self.mySceneView.backgroundColor = [UIColor lightGrayColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
   
}


@end
