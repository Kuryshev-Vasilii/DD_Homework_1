//
//  AppDelegate.h
//  CALCULATE
//
//  Created by Vasilii Kuryshev on 09.10.17.
//  Copyright © 2017 Vasilii Kuryshev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

