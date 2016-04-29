//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

/*
 The MIT License (MIT)
 Copyright © 2016 Frank Gregor, <phranck@cocoanaut.com>
 http://cocoanaut.mit-license.org
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the “Software”), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#import "___FILEBASENAMEASIDENTIFIER___.h"


@interface ___FILEBASENAMEASIDENTIFIER___ ()
@property (nonatomic, strong) NSMutableArray *childCoordinators;
@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Coordinator Creation

- (instancetype)initWithNavigationController:(__kindof ___VARIABLE_navigationControllerClass___ *)navigationController {
    return [self initWithNavigationController:navigationController delegate:nil];
}

- (instancetype)initWithNavigationController:(__kindof ___VARIABLE_navigationControllerClass___ *)navigationController delegate:(id<___FILEBASENAMEASIDENTIFIER___Delegate>)delegate {
    self = [super init];
    if (!self) return nil;
    
    _navigationController = navigationController;
    _delegate             = delegate;
    _childCoordinators    = [NSMutableArray new];
    
    return self;
}

+ (instancetype)coordinatorWithNavigationController:(__kindof ___VARIABLE_navigationControllerClass___ *)navigationController {
    return [[[self class] alloc] initWithNavigationController:navigationController];
}

+ (instancetype)coordinatorWithNavigationController:(__kindof ___VARIABLE_navigationControllerClass___ *)navigationController delegate:(id<___FILEBASENAMEASIDENTIFIER___Delegate>)delegate {
    return [[[self class] alloc] initWithNavigationController:navigationController delegate:delegate];
}

#pragma mark - API

- (void)start {

}

@end
