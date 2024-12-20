//
//  Trazo.h
//  ProyectoGraficos
//
//  Created by jimbo on 16/12/24.
//

// Trazo.h
#import <UIKit/UIKit.h>

@interface Trazo : NSObject

@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat grosor;

- (instancetype)initWithPath:(UIBezierPath *)path color:(UIColor *)color grosor:(CGFloat)grosor;

@end
