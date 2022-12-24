//
//  SecureFieldView.swift
//  FireBaseMacStudio
//
//  Created by Christopher Delanoue on 11/12/2022.
//

import SwiftUI

struct SecureFieldViewFieldView: View {
    var placeHolder: String
    @Binding var reponse: String
    @FocusState var selected: Bool
    var selectionOK: Color = .blue.opacity(0.7)
    var selectionKO: Color = .white
    var body: some View {
        VStack {
            SecureField(placeHolder, text: $reponse)
                .padding(3)
                .focused($selected)
                
        } .background(reponse != "" ? nil : selectionKO).cornerRadius(8)
            .animation(.linear, value: reponse)
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(placeHolder: "prenom", reponse: .constant("test")).previewLayout(.sizeThatFits)
    }
}
