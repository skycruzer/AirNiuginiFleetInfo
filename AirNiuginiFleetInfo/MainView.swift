//
//  ContentView.swift
//  AirNiuginiFleetInfo
//
//  Created by Maurice Rondeau on 4/9/2022.
//

import SwiftUI

struct MainView: View {
    
    //@State var dest = ""
    
    let fleet = FleetInfo.fleet()
    
    //.sorted { $0.name < $1.name }
    //let filteredNames = [String]()
    
    
    
    
    var body: some View {
        
     
            NavigationView {
                
                ZStack {
                    Image("background")
                        .resizable()
                        .ignoresSafeArea()
                        .opacity(0.9)
                                 
                VStack {
                        
                        
                        Image("px")
                        
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(100)
                            .frame(width: 100, height: 100, alignment: .leading)
                            .opacity(0.4)
                        
                            .background(
                                Circle()
                                    .stroke()
                                    .fill(.white)
                                    .frame(width: 110, height: 110)
                                    
                            )
                        
                        Text("Fleet Information")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .clipShape(Rectangle())
                            .cornerRadius(50)
                            .opacity(0.6)
                            .padding(.top)
                            .padding(.top, -20)
                        
                        List() {      //(self.fleet, id: \.id) { myRow in
                            
                            ForEach (fleet) { myRow in
                                
                                    
                                VStack(alignment: .leading) {
                                    
                                    HStack {
                                        
                                        Image(myRow.photo)
                                        
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height:  50)
                                            .cornerRadius(50)
                                        
                                        Text(myRow.name)
                                        //.background(.red)
                                            .font(.subheadline)
                                            .foregroundColor(.primary)
                                            .padding()
                                        //Text(myRow.series)
                                        NavigationLink(destination: DetailView(aircraft: myRow)) {
                                            
                                        }
                                        
                                    }
                                    Text(myRow.manufacturer)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                        .padding(.top, -10)
                                    // EngineView(engines: myRow.powerPlant)
                                }
                                    
                                }
                           
                            }
                       
                        Image(systemName: "info.circle.fill")
                        
                            .font(.largeTitle)
                            .foregroundColor(.white)

                    
                    }
                }
            
            }
            //.padding(.top, 0)
         
           
        }
    
    }



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}



