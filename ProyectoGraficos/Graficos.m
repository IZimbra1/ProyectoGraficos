//
//  Graficos.m
//  ProyectoGraficos
//
//  Created by Guest User on 29/10/24.
//

#import "Graficos.h"

@implementation Graficos

// Método para dibujar una línea
-(void)dibujaLinea: (int)x1 :(int)y1 :(int)x2 :(int)y2 {
    CGContextRef canvas = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(canvas, [UIColor redColor].CGColor);
    CGContextSetLineWidth(canvas, 2.5);
    CGContextMoveToPoint(canvas, x1, y1);
    CGContextAddLineToPoint(canvas, x2, y2);
    CGContextStrokePath(canvas);
}

// Método para dibujar un rectángulo
-(void)dibujaRectangulo:(int)x1 :(int)y1 :(int)x2 :(int)y2 {
    CGContextRef canvas = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(canvas, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(canvas, 2.5);
    CGRect rect = CGRectMake(x1, y1, x2 - x1, y2 - y1);
    CGContextAddRect(canvas, rect);
    CGContextStrokePath(canvas);
}

// Método para dibujar una curva cúbica
-(void)dibujaCurvaCubica:(int)x1 :(int)y1 :(int)x2 :(int)y2 :(int)cp1 :(int)cp2 :(int)cp3 :(int)cp4 {
    CGContextRef canvas = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(canvas, [UIColor greenColor].CGColor);
    CGContextSetLineWidth(canvas, 2.5);
    CGContextMoveToPoint(canvas, x1, y1);
    CGContextAddCurveToPoint(canvas, cp1, cp2, cp3, cp4, x2, y2);
    CGContextStrokePath(canvas);
}

// Método para manejar el cambio de selección en el UISegmentedControl
- (IBAction)segmentedValueC:(UISegmentedControl *)sender {
    // Leer los valores de las coordenadas desde los textfields
    x1 = _textoX1.text.intValue;
    y1 = _textoY1.text.intValue;
    x2 = _textoX2.text.intValue;
    y2 = _textoY2.text.intValue;

    // Llamar a setNeedsDisplay para redibujar la vista con la figura seleccionada
    [self setNeedsDisplay];
}

// Método drawRect para dibujar la figura seleccionada
- (void)drawRect:(CGRect)rect {
    _labelAncho.text = [NSString stringWithFormat:@"%@ = %0.2f", _labelAncho.text, rect.size.width];

    switch (self.segmented1.selectedSegmentIndex) {
        case 0: // Línea
            [self dibujaLinea:x1 :y1 :x2 :y2];
            break;
        case 1: // Rectángulo
            [self dibujaRectangulo:x1 :y1 :x2 :y2];
            break;
        case 2: // Curva Cúbica
            [self dibujaCurvaCubica:x1 :y1 :x2 :y2 :100 :150 :200 :250]; // Puedes ajustar los puntos de control aquí
            break;
        default:
            break;
    }
}

// Método para dibujar una línea al presionar el botón de "Línea"
- (IBAction)Linea:(UIButton *)sender {
    // Leer los valores de las coordenadas desde los textfields
    x1 = _textoX1.text.intValue;
    y1 = _textoY1.text.intValue;
    x2 = _textoX2.text.intValue;
    y2 = _textoY2.text.intValue;

    // Llamar a setNeedsDisplay para redibujar la vista
    [self setNeedsDisplay];
}

@end
