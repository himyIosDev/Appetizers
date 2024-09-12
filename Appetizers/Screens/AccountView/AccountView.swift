//
//  AccountView.swift
//  Appetizers
//
//  Created by Hamza Mughal on 03/09/2024.
//

import SwiftUI

struct AccountView: View {
    //
    @StateObject var viewModel = AccountViewModel()
    @FocusState var focusedTextField : FormTextField?
    
    enum FormTextField {
        //
        case firstName, lastName, email
    }
        
    var body: some View {
        //
        NavigationView {
            //
            Form {
                //
                Section(header: Text("Personal Info")) {
                    //
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit {
                            focusedTextField = .lastName
                        }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit {
                            focusedTextField = .email
                        }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit {
                            focusedTextField = nil
                        }
                        .submitLabel(.continue)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        //
                        viewModel.saveChangesBtnPressed()
                    } label: {
                        //
                        Text("Save Changes")
                    }
                }
                
                //
                Section(header: Text("Requests")) {
                    //
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .toolbar {
                //
                ToolbarItemGroup(placement: .keyboard) {
                    //
                    Button("Dismiss") {
                        //
                        focusedTextField = nil
                    }
                }
            }
            .navigationTitle("🤣 Account")
        }
        .onAppear {
            //
            viewModel.retriveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            //
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dissmissButton)
        }
    }
}

#Preview {
    AccountView()
}
