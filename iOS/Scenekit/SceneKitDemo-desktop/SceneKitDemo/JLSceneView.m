//
//  JLSceneView.m
//  SceneKitDemo
//
//  Created by Jose Luis Piedrahita on 5/28/13.
//  Copyright (c) 2013 Jose Luis Piedrahita. All rights reserved.
//

#import "JLSceneView.h"

@implementation JLSceneView

-(void)awakeFromNib
{
	SCNFloor *floor = [SCNFloor floor];
	floor.firstMaterial.diffuse.contents = [NSImage imageNamed:@"floor.jpg"];
	floor.firstMaterial.diffuse.contentsTransform = CATransform3DMakeScale(16, 16, 16);
	floor.reflectivity = 0;
    
	SCNNode *floorNode = [SCNNode node];
	floorNode.geometry = floor;
	[self.scene.rootNode addChildNode:floorNode];
	
	SCNLight *light = [SCNLight light];
	light.type = SCNLightTypeSpot;
	light.castsShadow = YES;
	light.shadowRadius = 10;
	light.color = [NSColor redColor];
    
	SCNNode *lightNode = [SCNNode node];
	lightNode.light	= light;
	lightNode.position = SCNVector3Make(0, 0, 10);
	[self.scene.rootNode addChildNode:lightNode];
	
	SCNLight *light2 = [SCNLight light];
	light2.type = SCNLightTypeOmni;
	light2.color = [NSColor colorWithCalibratedWhite:.1 alpha:1];
	SCNNode *light2Node = [SCNNode node];
	light2Node.light = light2;
	light2Node.position = SCNVector3Make(2, 2, 10);
	[self.scene.rootNode addChildNode:light2Node];
}

@end
