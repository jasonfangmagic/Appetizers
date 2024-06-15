//
//  AccountView.swift
//  Appetizers
//
//  Created by Jason Fang on 6/12/24.

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
   
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                  
                    TextField("Last Name", text: $viewModel.user.lastName)
                 
                    TextField("First Name", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                       
                    }
                Section(header: Text("Request")) {
                    Toggle("Extra Napkin", isOn: $viewModel.user.extraNapkins)
                       
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.brandPrimary))
               
            }
                .navigationTitle("🤣Account")
        }
        .onAppear(){
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
