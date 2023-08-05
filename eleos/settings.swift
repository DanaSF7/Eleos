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
        VStack{

            Button("gearshape") {
                buttonSheet.toggle()
              }
            .buttonStyle(.borderless)
            }
        .padding()
        .sheet(isPresented: $buttonSheet) {
            BottomSheetView()
            .presentationDetents([.height(700)])
        }
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
