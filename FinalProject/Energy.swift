//
//  Energy.swift
//  FinalProject
//
//  Created by Scholar on 31/07/2024.
//

import SwiftUI

struct EnergyView: View {
    
    var body: some View {
        VStack {
            Text("ENERGY")
                           .font(.largeTitle)
                           .fontWeight(.semibold)
                           .foregroundColor(Color.black)
                           .padding(.all, 5.007)
                           .background(Rectangle().frame(height: nil) .foregroundColor(Color(hue: 0.093, saturation: 0.615, brightness: 0.969)))
                           .cornerRadius(15)
                           .shadow(radius: 5)

                       Text("Being mindful of your energy usage is very important!                                                                Here are a few question and links to think about in your everyday life to reduce your carbon footprint.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.vertical, -21.0)
               .padding()
            
           
            Form {
                
                VStack {
                    Text("♻️Can I walk, bike, or use public transportation instead of driving?")
                        .padding(1.0)
                    Text("♻️Am I turning off lights and unplugging electronics when they are not in use?")
                        .padding(1.0)
                    Text("♻️Am I using multiple devices at once? If so do I really need to?")
                        .padding(1.0)
                    Text("♻️Am I turning off lights and unplugging electronics when they are not in use?")
                        .padding(1.0)
                    Text("♻️How can I reduce my digital carbon footprint by decluttering emails, files, and using cloud storage efficiently?")
                        .padding(1.0)
                    Text("♻️How can I minimize food waste by planning meals and using leftovers?")
                        .padding(1.0)
                        
                }
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Rectangle().padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: 800.0, height: 800.0) .foregroundColor(Color(red: 0.781, green: 0.938, blue: 0.77)))
                
                
                Section(header: Text("Here are some helpful links")
                    .foregroundColor(Color.black))  {
                    Link(destination: URL(string: "https://energysavingtrust.org.uk/hub/quick-tips-to-save-energy/")!) {
                        Text("Quick tips to save energy")
                            .foregroundColor(.blue)
                            .background(Rectangle().padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: 800.0, height: 800.0) .foregroundColor(Color(hue: 0.323, saturation: 0.18, brightness: 0.913)))
                    }
                    
                    Link(destination: URL(string: "https://www.smartenergygb.org/smart-living/smart-energy-tips?gad_source=1&gbraid=0AAAAAofUNNtJ2MQn_fTQ7VFPaqj2eY9XZ&gclid=Cj0KCQjwwae1BhC_ARIsAK4Jfry6HqU_sukWj1baYbTV8kXlzzuIQy9tOyHaEWCJ-KimmeB7s7W7JyMaAiCbEALw_wcB&gclsrc=aw.ds")!) {
                        Text("How much money are you wasting by wasting energy?")
                            .foregroundColor(.blue)
                            .background(Rectangle().padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: 800.0, height: 800.0) .foregroundColor(Color(hue: 0.323, saturation: 0.18, brightness: 0.913)))
                    }
                    
                    Link(destination: URL(string: "https://www.bbc.co.uk/bitesize/articles/zxxg3j6#zsmjh4j")!) {
                        Text("Saving energy BBC")
                            .foregroundColor(.blue)
                            .background(Rectangle().padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(width: 800.0, height: 800.0) .foregroundColor(Color(hue: 0.323, saturation: 0.18, brightness: 0.913)))
                    }
                        
                        
                }
                
                
            }
            
            .padding()
            
        }
        .background(Color(red: 0.995, green: 0.886, blue: 0.753))
    }

}

struct EnergyPage_Previews: PreviewProvider {
    static var previews: some View {
            EnergyView()
    }
}

