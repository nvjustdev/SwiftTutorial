//
//  AppDelegate.h
//  SwiftPlayByPlay
//
//  Created by Nirmala Jayaraman on 2/18/18.
//  Copyright © 2018 Nirmala Jayaraman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

