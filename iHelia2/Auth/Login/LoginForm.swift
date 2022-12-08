//
//  LoginForm.swift
//  iHelia2
//
//  Created by Nguyen Huu on 07/12/2022.
//

import SwiftUI

@available(iOS 15.0, *)
struct LoginForm: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State var showPassword: Bool = false
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            VStack(alignment: .leading){
                Text("Email or phone number")
                .foregroundColor(.white)
                .font(.system(
                    size: 14,
                    weight: .medium
                ))
                HStack {
                    Group {
                        if showPassword { // when this changes, you show either TextField or SecureField
                            TextFieldWithCustomPrompt(
                                
                                text: $username) {
                              Text("Type here...")
                                        .foregroundColor(Color.gray)
                                .padding(.leading, 20)
                                .font(.system(size: 12))
                            }
                                .frame(height: 35)
                                .background(Color.backgroundOpacityDark)
                                .cornerRadius(10)
                                .disableAutocorrection(true)
                        } else {
                            SecureFieldWithCustomPrompt(
                                
                                text: $username) {
                              Text("Type here...")
                                        .foregroundColor(Color.gray)
                                .padding(.leading, 20)
                                .font(.system(size: 12))
                            }
                                .frame(height: 35)
                                .background(Color.backgroundOpacityDark)
                                .cornerRadius(10)
                                .disableAutocorrection(true)
                                
                            }
                        }
                    }

                }
           
            Spacer().frame(height:20)
            VStack(alignment: .leading){
                Text("Password")
                .foregroundColor(.white)
                .font(.system(
                    size: 14,
                    weight: .medium
                ))
                TextFieldWithCustomPrompt(
                    
                    text: $username) {
                  Text("Type here...")
                            .foregroundColor(Color.gray)
                    .padding(.leading, 20)
                    .font(.system(size: 12))
                }
                    .frame(height: 35)
                    .background(Color.backgroundOpacityDark)
                    .cornerRadius(10)
//                                .overlay {
//                                     RoundedRectangle(cornerRadius: 10)
//                                        .stroke(.blue, lineWidth: 2)
//                                }
                    .disableAutocorrection(true)
                
            }
            Spacer().frame(height:20)
            Button {
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
            }
            .frame(width: 150, alignment: .center)
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            .tint(Color.accent)
            .cornerRadius(50)
            
            
        }.textFieldStyle(.plain)
            .padding()
    }
}

@available(iOS 15.0, *)
struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}

struct PlaceholderModifier<Placeholder>: ViewModifier where Placeholder : View {
  let isShowing: Bool
  @ViewBuilder let placeholder: () -> Placeholder

  func body(content: Content) -> some View {
    ZStack(alignment: .leading) {
      placeholder()
        .opacity(isShowing ? 1 : 0) // retains placeholder size even when it's hidden
      content
    }
  }
}

extension View {
  func placeholder<Placeholder>(isShowing: Bool,
                                @ViewBuilder placeholder: @escaping () -> Placeholder) -> some View
  where Placeholder : View {
    modifier(PlaceholderModifier(isShowing: isShowing, placeholder: placeholder))
  }
}

struct TextFieldWithCustomPrompt<Prompt>: View where Prompt : View {
  @Binding var text: String
  @ViewBuilder let prompt: () -> Prompt

  var body: some View {
    TextField("", text: $text)
      .placeholder(isShowing: text.isEmpty, placeholder: prompt)
  }
}

struct SecureFieldWithCustomPrompt<Prompt>: View where Prompt : View {
  @Binding var text: String
  @ViewBuilder let prompt: () -> Prompt

  var body: some View {
    SecureField("", text: $text)
      .placeholder(isShowing: text.isEmpty, placeholder: prompt)
  }
}
