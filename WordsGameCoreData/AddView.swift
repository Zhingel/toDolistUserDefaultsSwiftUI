//
//  AddView.swift
//  WordsGameCoreData
//
//  Created by Стас Жингель on 04.10.2021.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                TextField("type something here", text: $textFieldText)
                    .padding()
                    .background(Color.gray)
                    .opacity(0.5)
                    .cornerRadius(10)
                Button("Save") {
                    saveButtonPressed()
                }
                .foregroundColor(.white)
                .padding(10)
                .background(Color.blue)
                .cornerRadius(10)
                
                
            }
            .padding()
        }
        .navigationTitle("Add an Item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "You new todo task mast be more then 3 sumbols"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
