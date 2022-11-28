//
//  HomeScreen.swift
//  Task 3-4
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Logout")
                    .foregroundColor(.init(uiColor: .systemRed))
                    .onTapGesture {
                        UserDefaults.standard.removeObject(forKey: "userid")
                        status.listen()
                    }
            }
            .navigationBarItems(
                leading: Image(systemName: "camera").foregroundColor(.init(uiColor: .systemRed)),
                trailing: Image(systemName: "location").foregroundColor(.init(uiColor: .systemRed))
            )
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
