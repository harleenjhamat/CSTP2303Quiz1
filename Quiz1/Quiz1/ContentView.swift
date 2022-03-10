//
//  ContentView.swift
//  Quiz1
//
//  Created by Harleen Jhamat on 2022-03-10.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @State var nationality: String = ""
    @State var submit = false
    
    var body: some View {
        
        VStack {
            Text("Every Government Form Ever")
                .padding()
                .font(.system(size: 25))
            
            TextField("Name ", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250, height: 30)
            
            TextField("Nationality ", text: $nationality)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250, height: 30)
            
            if submit {
                Text(name)
                Text(nationality)
            }
            
            HStack {
                
                Button(action:{submit.toggle()},
                       label: {
                            Text("Submit")
                                .frame(width: 100, height:30, alignment: .center)
                                .foregroundColor(.white)
                                .background(.cyan)
                                .padding()
                
                })
                
                Button(action:{}, label:
                        {
                            Text("+")
                                .frame(width: 30, height:30)
                                .foregroundColor(.white)
                                .background(.cyan)
                                .padding()
                    
                })
                
            }
            
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
