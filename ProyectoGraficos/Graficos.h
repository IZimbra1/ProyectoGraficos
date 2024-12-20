//
//  Graficos.h
//  ProyectoGraficos
//
//  Created by Guest User on 29/10/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Graficos : UIView
{
    int x1;
    int y1;
    int x2;
    int y2;
}

@property (weak, nonatomic) IBOutlet UITextField *textoX1;
@property (weak, nonatomic) IBOutlet UITextField *textoY1;
@property (weak, nonatomic) IBOutlet UITextField *textoX2;
@property (weak, nonatomic) IBOutlet UITextField *textoY2;
@property (weak, nonatomic) IBOutlet UILabel *labelAncho;

-(IBAction)Linea:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmented1;
- (IBAction)segmentedValueC:(UISegmentedControl *)sender;

-(void)dibujaLinea: (int)x1 :(int)y1 :(int)x2 :(int)y2;



@end

NS_ASSUME_NONNULL_END
