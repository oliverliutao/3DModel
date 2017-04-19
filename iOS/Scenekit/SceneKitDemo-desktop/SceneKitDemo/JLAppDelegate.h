//
//  JLAppDelegate.h
//  SceneKitDemo
//
//  Created by Jose Luis Piedrahita on 5/28/13.
//  Copyright (c) 2013 Jose Luis Piedrahita. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <SceneKit/SceneKit.h>

@interface JLAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet SCNView *sceneView;

@end
