//
//  Home.swift
//  eleos
//
//  Created by TokaJaber on 06/08/2023.
//

import SwiftUI

struct Home: View {
    @State var buttonSheet = false
    @State var AccountSheet = false

    
    var body: some View {
        ZStack{
            Button {
           buttonSheet.toggle()
            } label: {
            Image(systemName: "gearshape")
               .font(.body.bold())
               .foregroundColor(.black)
               .padding(15)
                .frame(maxWidth: . infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(20)
                
                    .sheet(isPresented: $buttonSheet) {
                        BottomSheetView()
                            .presentationDetents([.height(730)])
                    }
                
            }
            
            Button {
                AccountSheet.toggle()
            } label: {
                Image(systemName: "person.crop.circle")
                    .font(.body.bold())
                    .foregroundColor(.black)
                    .padding(20)
                    .frame(width: 280, height: 730, alignment: .topTrailing)
                    .padding(15)
                
                    .sheet(isPresented: $AccountSheet) {
                        AccountSheetView()
                            .presentationDetents([.height(730)])
                    }
                
            }
            
        }
    }
    
    struct BottomSheetView: View {
        var body: some View {
            NavigationView {
                ZStack {
                    VStack {
                    Text("Settings")
                        .bold()
                        .padding(15)
                        .accentColor(.black)
                        .dynamicTypeSize(.xLarge)
                    
                    Form {
                    
                        
                        Section("General") {
                            NavigationLink(destination: NotificationView(), label: {
                                Text("Notification")
                                
                              
                            })
                            Text("apperance")
//                            make a navigation like here and create a view for it

                        }
                        }
                        
                    }
                }
                
            }
            }

        }
    struct NotificationView: View {
        @State private var isToggled = false

        var body: some View {
            Form {
                
                Toggle("Mute ", isOn: $isToggled)
                
                if isToggled {
                    Text("Muted")
                        .font(.system(size: 12, weight: .light, design: .default))
                }
            }

                }
                
            }



            }

        
    
    
    
    struct AccountSheetView: View {
        var body: some View {
            Text("Account")
                .bold()
                .padding(15)
                .accentColor(.black)
                .dynamicTypeSize(.xLarge)
            Form {
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
//                    .scale(1.0)
//                    .size(width: 40, height: 40)
                    Text("okay")
//
                
            }
                          
        }
    }
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }

