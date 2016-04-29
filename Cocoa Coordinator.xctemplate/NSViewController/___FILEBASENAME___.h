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

#import <Foundation/Foundation.h>


@class ___VARIABLE_navigationControllerClass___;

#pragma mark - ___FILEBASENAMEASIDENTIFIER___Delegate
@protocol ___FILEBASENAMEASIDENTIFIER___Delegate <NSObject>
@required

@optional

@end


@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject


#pragma mark - Coordinator Creation
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithNavigationController:(__kindof ___VARIABLE_navigationControllerClass___ *)navigationController;
- (instancetype)initWithNavigationController:(__kindof ___VARIABLE_navigationControllerClass___ *)navigationController delegate:(id<___FILEBASENAMEASIDENTIFIER___Delegate>)delegate NS_DESIGNATED_INITIALIZER;


#pragma mark - Coordinator Properties
@property (nonatomic, strong, readonly) __kindof ___VARIABLE_navigationControllerClass___ *navigationController;
@property (nonatomic, strong) NSMutableArray *childCoordinators;
@property (weak, readonly) id<___FILEBASENAMEASIDENTIFIER___Delegate> delegate;


#pragma mark - API
- (void)start;

@end
