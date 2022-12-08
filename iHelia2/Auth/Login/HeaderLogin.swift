//
//  Header.swift
//  iHelia2
//
//  Created by Nguyen Huu on 07/12/2022.
//

import SwiftUI

@available(iOS 15.0, *)
struct HeaderLogin: View {
    var body: some View {
        GeometryReader{
            geometry in
            ZStack(
                alignment: .leading
            ){
                Path { path in
                    let width: CGFloat = geometry.size.width
                    let height: CGFloat = geometry.size.height
                    // 1
                    path.move(
                        to: CGPoint(
                            x: 0 * width,
                            y: 0 * height
                        )
                    )
                    path.addLine(to: CGPoint(
                        x: 0*width,
                        y: 0.9*height
                    ))
                    path.addQuadCurve(to: CGPoint(
                        x: 0.6*width,
                        y: 0*height
                    ),
                          control: CGPoint(
                            x: 0.32*width,
                        y: 1.3*height
                    ))
                    path.addLine(to: CGPoint(
                        
                        x: 0 * width,
                        y: 0 * height
                    ))
            
                    path.closeSubpath()
                }
                .fill(Color.accent)
                HStack{
                    VStack(alignment: .leading){
                        HStack {
                            Image(systemName:"arrow.backward")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(height: 12)
                            Text("Back")
                            .foregroundColor(.white)
                            .font(.system(
                                size: 12
                            ))
                            
                        }.padding(.vertical, 5)
                        
                        Text("Log In")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        Spacer()
                    }
                    
                    Spacer()
                    Button{
                        
                    } label: {
                        Image(systemName:"info.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .frame(width: 20, height: 20)
                    }
                    .frame(width: 35, height: 35, alignment: .center)
                    .buttonStyle(.borderedProminent)
                    .tint(.gray2)
                    .cornerRadius(8)
                    .foregroundColor(Color.gray2)

        
                }.padding(.all, 20)
                
            }
            
        }
        .frame(
            width: .infinity, height: 120, alignment: .center
        )
    }
}

@available(iOS 15.0, *)
struct Header_Previews: PreviewProvider {
    static var previews: some View {
        HeaderLogin()
    }
}

