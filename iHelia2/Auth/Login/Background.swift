//
//  Background.swift
//  iHelia2
//
//  Created by Nguyen Huu on 07/12/2022.
//

import SwiftUI

struct Background: View {
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        ZStack{
            Path { path in
                
                // 1
                path.move(
                    to: CGPoint(
                        x: 0 * width,
                        y: 1 * height
                    )
                )
                path.addLine(to: CGPoint(
                    x: 0*width,
                    y: 50
                ))
                path.addQuadCurve(to: CGPoint(
                    x: 1*width,
                    y: 50
                ),
                      control: CGPoint(
                    x: 0.5 * width,
                    y: -50
                ))
                path.addLine(to: CGPoint(
                    
                    x: 1 * width,
                    y: 1 * height
                ))
        
                path.closeSubpath()
            }
            .fill(Color.gray2)
            Path { path in
                // 1
                path.move(
                    to: CGPoint(
                        x: 0 * width,
                        y: 1 * height
                    )
                )
                path.addLine(to: CGPoint(
                    x: 0*width,
                    y: 100
                ))
                path.addQuadCurve(to: CGPoint(
                    x: 1*width,
                    y: 100
                ),
                      control: CGPoint(
                    x: 0.5 * width,
                    y: 0
                ))
                path.addLine(to: CGPoint(
                    
                    x: 1 * width,
                    y: 1 * height
                ))
        
                path.closeSubpath()
            }
            .fill(Color.gray1)
            Path { path in
                // 1
                path.move(
                    to: CGPoint(
                        x: 0 * width,
                        y: 1 * height
                    )
                )
                path.addLine(to: CGPoint(
                    x: 0*width,
                    y: 150
                ))
                path.addQuadCurve(to: CGPoint(
                    x: 1*width,
                    y: 150
                ),
                      control: CGPoint(
                    x: 0.5 * width,
                    y: 50
                ))
                path.addLine(to: CGPoint(
                    
                    x: 1 * width,
                    y: 1 * height
                ))
        
                path.closeSubpath()
            }
            .fill(Color.backgroundDark)
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{
            geometry in
            
            Background(width: geometry.size.width, height: geometry.size.height)
        }.frame(width: .infinity, height: 400, alignment: .bottom)
    }
}
