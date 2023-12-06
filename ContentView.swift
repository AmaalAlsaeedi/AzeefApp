//
//  ContentView.swift
//  whoisazef
//
//  Created by Amaal Ali Alsaeedi on 22/05/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
       
       var body: some View {
           TabView(selection: $selectedTab) {
               // First tab
               VStack {
                   ZStack {
                       Text("من نحن؟")
                           .font(.custom("Al Bayan", size: 40))
                           .position(CGPoint(x: 200, y: 50))
                           .foregroundColor(.brown)
                           
                           VStack (spacing:50){
                       
                               ScrollView {
                                   VStack(spacing:-60){
                                       
                                           Image("pic1")
                                               .resizable()
                                               .frame(width: 300, height: 300)
                                               .cornerRadius(10)
                                           //                                            .clipShape(Rectangle())
                                               .padding(50.0)
                                               .position(CGPoint(x: 200.0, y: 200.0))

                                           
                                           Text (" نعزز الثقافه الموسيقية السعودية من خلال إنشاء تصنيف تفاعلي للموسيقى الثقافية السعودية حسب المنطقة والآلات الموسيقية. بطريقة بسيطة وجذابة للغوص في التراث الثقافي الغني للموسيقى العربية السعودية. ")
                                               .font(Font.custom("Al Bayan", size: 24))
                                               .multilineTextAlignment(.trailing)
                                               .foregroundColor(.black)
                                               .frame(width: 300, height: 300)
                                           
                                           //    .position(CGPoint(x: 150, y: 0))
                                           
                                           Text (" من اهدافنا في تعزيز الثقافة الموسيقية السعودية أيضًا هو استعادة وتوثيق التراث الموسيقي السعودي، وقد تم إعادة اكتشاف العديد من الآلات الموسيقية التقليدية التي كانت مهمشة لفترة طويلة. ")
                                           
                                               .font(Font.custom("Al Bayan", size: 24))
                                               .multilineTextAlignment(.trailing)
                                               .foregroundColor(.black)
                                               .frame(width: 300, height: 300)
                                       
                                       Image("pic2")
                                           .resizable()
                                           .frame(width: 300, height: 300)
                                           .cornerRadius(10)
                                       //                                            .clipShape(Rectangle())
                                           .padding(50.0)
                                           .position(CGPoint(x: 200.0, y: 200.0))
                                          
                                       
                                       Text (" تعد الموسيقى من أعظم التعابير الثقافية في أي مجتمع، فهي تعكس تاريخه وهويته، وتساهم في تعزيز الروح الوطنية والانتماء الثقافي. وفي السنوات الأخيرة، شهدت المملكة العربية السعودية تحولًا ثقافيًا هامًا، حيث تم تعزيز الثقافة الموسيقية السعودية واعتبارها جزءًا أساسيًا من التراث الغني والتنوع الثقافي للمملكة. ")
                                       
                                           .font(Font.custom("Al Bayan", size: 24))
                                           .multilineTextAlignment(.trailing)
                                           .foregroundColor(.black)
                                           .padding(.top,-10)
                                           .frame(width: 300, height: 400)
                                       
                                       }


                           }//end of scrollView
                               .padding(.top, 100.0)}//end of VStack
   
                   }
               }
                           
               // First tab
               .tabItem {
                   Image(systemName: "person.fill")
                   Text("من نحن")
               }
               .tag(0)
               
               // Second tab
               Text("صفحة الخريطة")
               .font(.custom("Al Bayan", size: 20))
               .tabItem {
                   Image(systemName: "map.fill")
                   Text("الخريطة")
               }
               .tag(1)
               
               // Third tab
               Text("اكتشف المعزوفات")
               .font(.custom("Al Bayan", size: 20))
               .tabItem {
                   Image(systemName: "music.note.house.fill")
                   Text("اكتشف")
               }
               .tag(2)
           }
           .accentColor(Color(red: 0.33, green: 0.50, blue: 0.40))// Set the accent color when a tab is selected
       }
   }

   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
   }
