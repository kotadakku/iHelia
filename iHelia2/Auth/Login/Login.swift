//
//  Login.swift
//  iHelia2
//
//  Created by Nguyen Huu on 06/12/2022.
//

import SwiftUI

@available(iOS 15.0, *)
struct Login: View {
    
    var body: some View {
        VStack(
        ){
            HeaderLogin()
            Spacer()
            GeometryReader{
                geometry in
                ZStack{
                    Background(width: geometry.size.width, height: geometry.size.height)
                    LoginForm()
                }
            }
            .frame(
                width: .infinity, height: 400, alignment: .center
            )
        }
    }
}

@available(iOS 15.0, *)
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}


