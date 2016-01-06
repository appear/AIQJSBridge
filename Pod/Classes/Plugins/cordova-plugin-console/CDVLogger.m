/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVLogger.h"
#import <Cordova/CDV.h>
#import <AIQCoreLib/AIQLog.h>

@implementation CDVLogger

/* log a message */
- (void)logLevel:(CDVInvokedUrlCommand*)command
{
    id level = [command argumentAtIndex:0];
    id message = [command argumentAtIndex:1];

    if ([level isEqualToString:@"ERROR"]) {
        AIQLogCError(3, @"%@", message);
    } else if ([level isEqualToString:@"WARN"]) {
        AIQLogCWarn(3, @"%@", message);
    } else if ([level isEqualToString:@"INFO"]) {
        AIQLogCInfo(3,  @"%@", message);
    } else {
        AIQLogCDebug(3, @"%@", message);
    }
}

@end