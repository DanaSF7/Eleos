//
//  settings.swift
//  eleos
//
//  Created by TokaJaber on 05/08/2023.
//
//Button(action: addItem) {
//        Label("Add Folder", systemImage: "folder.badge.plus")
//    }

    
import SwiftUI

struct settings: View {
    @State var buttonSheet = false
    var body: some View {
        ZStack{
            Button {
                buttonSheet.toggle()
            } label: {
                Image(systemName: "gearshape")
                    .font(.body.bold())
                    .foregroundColor(.black)
                    .padding(9)
                    .frame(maxWidth: . infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(20)
                
                    .sheet(isPresented: $buttonSheet) {
                        BottomSheetView()
                            .presentationDetents([.height(700)])
                    }
                
            }
            
            //            Button("gearshape") {
            //                buttonSheet.toggle()
            //              }
            //            .buttonStyle(.borderless)
            //            }
            //        .padding()
            
        }
    }
    struct BottomSheetView: View {
        var body: some View {
            Text("setings")
            //            we can add sitting stuff here later
        }
    }
    
    struct settings_Previews: PreviewProvider {
        static var previews: some View {
            settings()
        }
    }
}
