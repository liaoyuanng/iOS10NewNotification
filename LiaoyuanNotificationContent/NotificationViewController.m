//
//  NotificationViewController.m
//  LiaoyuanNotificationContent
//
//  Created by JuLiaoyuan on 16/9/25.
//  Copyright © 2016年 JuLiaoyuan. All rights reserved.
//

#import "NotificationViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <UserNotificationsUI/UserNotificationsUI.h>

@interface NotificationViewController () <UNNotificationContentExtension>

@property IBOutlet UILabel *label;

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any required interface initialization here.
}

- (void)didReceiveNotification:(UNNotification *)notification {
    
    self.label.text = notification.request.content.body;
}

@end
