//
//  Healthandshieldbar.swift
//  RedSpace
//
//  Created by gtluszcz on 13.09.2017.
//  Copyright © 2017 GT. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//
//  This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
//



import UIKit
import SpriteKit

public class Healthandshieldbar : NSObject {

    
    //MARK: PROPERTIES
    var game: GameScene!
    


    
    //// Drawing Methods

    @objc dynamic class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 670, height: 100), resizing: ResizingBehavior = .aspectFit, game: GameScene) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 670, height: 100), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 670, y: resizedFrame.height / 100)
        
        
        //// Color Declarations
        let fillColor3 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        let strokeColor2 = UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1.000)
        let fillColor4 = UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1.000)
        let textForeground2 = UIColor(red: 0.251, green: 0.251, blue: 0.251, alpha: 1.000)
        let strokeColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor5 = UIColor(red: 0.169, green: 0.169, blue: 0.169, alpha: 1.000)
        
        //// healthbar.svg Group 2
        //// Interfejs 2
        //// Pasek_życia_i_tarczy 2
        //// pasek_tarcza 2
        //// ramka_1_ 2
        //// tło_czarne 2 Drawing
        let to_czarne2Path = UIBezierPath()
        to_czarne2Path.move(to: CGPoint(x: 75.64, y: 56.17))
        to_czarne2Path.addLine(to: CGPoint(x: 93.12, y: 82.56))
        to_czarne2Path.addLine(to: CGPoint(x: 233.81, y: 82.56))
        to_czarne2Path.addLine(to: CGPoint(x: 240.67, y: 74.06))
        to_czarne2Path.addLine(to: CGPoint(x: 421.83, y: 74.06))
        to_czarne2Path.addLine(to: CGPoint(x: 428.64, y: 65.58))
        to_czarne2Path.addLine(to: CGPoint(x: 643.6, y: 65.56))
        to_czarne2Path.addLine(to: CGPoint(x: 648.84, y: 56.17))
        to_czarne2Path.addLine(to: CGPoint(x: 75.64, y: 56.17))
        to_czarne2Path.close()
        fillColor3.setFill()
        to_czarne2Path.fill()
        
        
        //// obwódka 2 Drawing
        let obwodka2Path = UIBezierPath()
        obwodka2Path.move(to: CGPoint(x: 643.58, y: 68.06))
        obwodka2Path.addLine(to: CGPoint(x: 429.43, y: 68.06))
        obwodka2Path.addLine(to: CGPoint(x: 422.59, y: 76.61))
        obwodka2Path.addLine(to: CGPoint(x: 241.46, y: 76.56))
        obwodka2Path.addLine(to: CGPoint(x: 234.56, y: 84.81))
        obwodka2Path.addLine(to: CGPoint(x: 69.93, y: 84.8))
        obwodka2Path.addLine(to: CGPoint(x: 73.12, y: 54.66))
        obwodka2Path.addLine(to: CGPoint(x: 650.76, y: 54.66))
        obwodka2Path.addLine(to: CGPoint(x: 643.58, y: 68.06))
        obwodka2Path.close()
        obwodka2Path.move(to: CGPoint(x: 93.12, y: 82.56))
        obwodka2Path.addLine(to: CGPoint(x: 233.81, y: 82.56))
        obwodka2Path.addLine(to: CGPoint(x: 240.67, y: 74.06))
        obwodka2Path.addLine(to: CGPoint(x: 421.83, y: 74.06))
        obwodka2Path.addLine(to: CGPoint(x: 428.64, y: 65.56))
        obwodka2Path.addLine(to: CGPoint(x: 643.6, y: 65.56))
        obwodka2Path.addLine(to: CGPoint(x: 648.83, y: 56.17))
        obwodka2Path.addLine(to: CGPoint(x: 75.64, y: 56.17))
        obwodka2Path.addLine(to: CGPoint(x: 93.12, y: 82.56))
        obwodka2Path.close()
        fillColor4.setFill()
        obwodka2Path.fill()
        
        
        
        
        //// środek_1_ 2
        //// Group 35
        //// SVGID_2_ 2
        context.saveGState()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        //// Clip Bezier 22
        let bezier22Path = UIBezierPath()
        bezier22Path.move(to: CGPoint(x: 643.17, y: 64.86))
        bezier22Path.addLine(to: CGPoint(x: 429.09, y: 64.86))
        bezier22Path.addLine(to: CGPoint(x: 435.48, y: 56.92))
        bezier22Path.addLine(to: CGPoint(x: 434, y: 56.92))
        bezier22Path.addLine(to: CGPoint(x: 427.64, y: 64.86))
        bezier22Path.addLine(to: CGPoint(x: 420.73, y: 73.4))
        bezier22Path.addLine(to: CGPoint(x: 241.13, y: 73.35))
        bezier22Path.addLine(to: CGPoint(x: 254.42, y: 56.92))
        bezier22Path.addLine(to: CGPoint(x: 252.81, y: 56.92))
        bezier22Path.addLine(to: CGPoint(x: 239.68, y: 73.36))
        bezier22Path.addLine(to: CGPoint(x: 232.77, y: 81.88))
        bezier22Path.addLine(to: CGPoint(x: 93.52, y: 81.86))
        bezier22Path.addLine(to: CGPoint(x: 76.95, y: 56.92))
        bezier22Path.addLine(to: CGPoint(x: 647.73, y: 56.92))
        bezier22Path.addLine(to: CGPoint(x: 643.17, y: 64.86))
        bezier22Path.close()
        bezier22Path.addClip()


        //// animShield Drawing
        let shieldamount = game.Player.shieldhealth / game.Player.maxshieldhealth * 571
        let animShieldPath = UIBezierPath()
        animShieldPath.move(to: CGPoint(x: 77, y: 69))
        animShieldPath.addLine(to: CGPoint(x: 77 + shieldamount, y: 69))
        strokeColor.setStroke()
        animShieldPath.lineWidth = 28
        animShieldPath.stroke()
        
        game.gui.shieldbar = bezier22Path.bounds
        game.gui.shieldbar = game.gui.shieldbar.applying(CGAffineTransform(translationX: resizedFrame.minX, y: resizedFrame.minY))
        game.gui.shieldbar = game.gui.shieldbar.applying(CGAffineTransform(scaleX: resizedFrame.width / 670, y: resizedFrame.height / 100))

        
        
        context.endTransparencyLayer()
        context.restoreGState()








        //// podpis_tarcza 2
        //// Bezier 27 Drawing
        let bezier27Path = UIBezierPath()
        bezier27Path.move(to: CGPoint(x: 8.35, y: 54.67))
        bezier27Path.addLine(to: CGPoint(x: 0, y: 69.73))
        bezier27Path.addLine(to: CGPoint(x: 8.35, y: 84.81))
        bezier27Path.addLine(to: CGPoint(x: 91.42, y: 84.81))
        bezier27Path.addLine(to: CGPoint(x: 73.12, y: 54.67))
        bezier27Path.addLine(to: CGPoint(x: 8.17, y: 54.67))
        fillColor4.setFill()
        bezier27Path.fill()
        
        
        //// Bezier 29 Drawing
        let bezier29Path = UIBezierPath()
        bezier29Path.move(to: CGPoint(x: 16.7, y: 99.87))
        bezier29Path.addLine(to: CGPoint(x: 81.47, y: 99.87))
        bezier29Path.addLine(to: CGPoint(x: 91.75, y: 84.33))
        bezier29Path.addLine(to: CGPoint(x: 8.09, y: 84.33))
        bezier29Path.addLine(to: CGPoint(x: 16.7, y: 99.87))
        bezier29Path.close()
        fillColor4.setFill()
        bezier29Path.fill()

        


        //// Label 5 Drawing
        let label5Rect = CGRect(x: 17.94, y: 57.2, width: 54.47, height: 19)
        let label5Style = NSMutableParagraphStyle()
        label5Style.alignment = .left
        let label5FontAttributes = [
            NSFontAttributeName: UIFont(name: "RussoOne-Regular", size: 14)!,
            NSForegroundColorAttributeName: textForeground2,
            NSParagraphStyleAttributeName: label5Style,
        ]

        "SHIELD".draw(in: label5Rect, withAttributes: label5FontAttributes)


        //// Label 6 Drawing
        let label6Rect = CGRect(x: 14.53, y: 75.2, width: 68.17, height: 19)
        game.gui.shieldtext = label6Rect
        game.gui.shieldtext = game.gui.shieldtext.applying(CGAffineTransform(translationX: resizedFrame.minX, y: resizedFrame.minY))
        game.gui.shieldtext = game.gui.shieldtext.applying(CGAffineTransform(scaleX: resizedFrame.width / 670, y: resizedFrame.height / 100))
        
        let label6Style = NSMutableParagraphStyle()
        label6Style.alignment = .center
        let label6FontAttributes = [
            NSFontAttributeName: UIFont(name: "RussoOne-Regular", size: 15)!,
            NSForegroundColorAttributeName: textForeground2,
            NSParagraphStyleAttributeName: label6Style,
        ]

        "\(Int(100 * game.Player.shieldhealth / game.Player.maxshieldhealth))%".draw(in: label6Rect, withAttributes: label6FontAttributes)




        //// podpis_życie 2
        //// Bezier 30 Drawing
        let bezier30Path = UIBezierPath()
        bezier30Path.move(to: CGPoint(x: 36.09, y: -0))
        bezier30Path.addLine(to: CGPoint(x: 164.92, y: -0))
        bezier30Path.addLine(to: CGPoint(x: 185.88, y: 19.37))
        bezier30Path.addLine(to: CGPoint(x: 25.94, y: 20))
        bezier30Path.addLine(to: CGPoint(x: 36.09, y: -0))
        bezier30Path.close()
        fillColor4.setFill()
        bezier30Path.fill()
        
        
        //// Label 7 Drawing
        let label7Rect = CGRect(x: 38.44, y: 2.51, width: 126.82, height: 21)
        game.gui.healthtext = label7Rect
        game.gui.healthtext = game.gui.healthtext.applying(CGAffineTransform(translationX: resizedFrame.minX, y: resizedFrame.minY))
        game.gui.healthtext = game.gui.healthtext.applying(CGAffineTransform(scaleX: resizedFrame.width / 670, y: resizedFrame.height / 100))
        let label7Style = NSMutableParagraphStyle()
        label7Style.alignment = .center
        let label7FontAttributes = [
            NSFontAttributeName: UIFont(name: "RussoOne-Regular", size: 15)!,
            NSForegroundColorAttributeName: textForeground2,
            NSParagraphStyleAttributeName: label7Style,
        ]

        "HULL \(Int(game.Player.health))/\(Int(game.Player.maxhealth))".draw(in: label7Rect, withAttributes: label7FontAttributes)




        //// pasek_życie 2
        //// ramka 2
        //// tło_czarne_1_ 2 Drawing
        let to_czarne_1_2Path = UIBezierPath()
        to_czarne_1_2Path.move(to: CGPoint(x: 14.99, y: 52.9))
        to_czarne_1_2Path.addLine(to: CGPoint(x: 29.35, y: 24.62))
        to_czarne_1_2Path.addLine(to: CGPoint(x: 660.8, y: 24.62))
        to_czarne_1_2Path.addLine(to: CGPoint(x: 646.45, y: 52.9))
        to_czarne_1_2Path.addLine(to: CGPoint(x: 14.99, y: 52.9))
        to_czarne_1_2Path.close()
        fillColor5.setFill()
        to_czarne_1_2Path.fill()
        
        
        //// obwódka_1_ 2 Drawing
        let obwodka_1_2Path = UIBezierPath()
        obwodka_1_2Path.move(to: CGPoint(x: 650.62, y: 54.92))
        obwodka_1_2Path.addLine(to: CGPoint(x: 8.21, y: 54.92))
        obwodka_1_2Path.addLine(to: CGPoint(x: 26.67, y: 18.56))
        obwodka_1_2Path.addLine(to: CGPoint(x: 669.04, y: 18.56))
        obwodka_1_2Path.addLine(to: CGPoint(x: 650.62, y: 54.92))
        obwodka_1_2Path.close()
        obwodka_1_2Path.move(to: CGPoint(x: 15.09, y: 52.9))
        obwodka_1_2Path.addLine(to: CGPoint(x: 646.45, y: 52.9))
        obwodka_1_2Path.addLine(to: CGPoint(x: 660.79, y: 24.62))
        obwodka_1_2Path.addLine(to: CGPoint(x: 29.46, y: 24.62))
        obwodka_1_2Path.addLine(to: CGPoint(x: 15.09, y: 52.9))
        obwodka_1_2Path.close()
        fillColor4.setFill()
        obwodka_1_2Path.fill()
        
        
        
        
        //// środek 2
        //// Group 44
        //// Group 45
        //// SVGID_4_ 2
        context.saveGState()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        //// Clip Bezier 33
        let bezier33Path = UIBezierPath()
        bezier33Path.move(to: CGPoint(x: 645.09, y: 52.9))
        bezier33Path.addLine(to: CGPoint(x: 16.38, y: 52.9))
        bezier33Path.addLine(to: CGPoint(x: 30.78, y: 24.62))
        bezier33Path.addLine(to: CGPoint(x: 659.49, y: 24.62))
        bezier33Path.addLine(to: CGPoint(x: 645.09, y: 52.9))
        bezier33Path.close()
        bezier33Path.addClip()



        //// animHEalth Drawing
        let healthamount = game.Player.health / game.Player.maxhealth * 642
        let animHEalthPath = UIBezierPath()
        animHEalthPath.move(to: CGPoint(x: 17, y: 38.6))
        animHEalthPath.addLine(to: CGPoint(x: 17 + healthamount, y: 38.8))
        strokeColor2.setStroke()
        animHEalthPath.lineWidth = 26
        context.saveGState()
        context.setLineDash(phase: 0, lengths: [24, 2])
        animHEalthPath.stroke()
        
        game.gui.healthbar = bezier33Path.bounds
        game.gui.healthbar = game.gui.healthbar.applying(CGAffineTransform(translationX: resizedFrame.minX, y: resizedFrame.minY))
        game.gui.healthbar = game.gui.healthbar.applying(CGAffineTransform(scaleX: resizedFrame.width / 670, y: resizedFrame.height / 100))
        
        context.restoreGState()
        
        
        context.endTransparencyLayer()
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(HealthbarResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}