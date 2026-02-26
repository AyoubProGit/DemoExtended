//
//  StudentCard.swift
//  TestTechniqueExtended26
//
//  Created by Cindy Bajoni on 11/12/2025.
//

import SwiftUI

struct StudentCard: View {
    
    var student: Student
    
    var body: some View {
        

        ZStack {
            
            Image(student.house.rawValue.lowercased())
                .resizable()
                .scaledToFill()
                .frame(width: 320)
                .opacity(0.3)

            VStack(spacing: 10) {
                
                if let url = student.picture?.first?.url {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } placeholder: {
                        ProgressView()
                            .frame(width: 80, height: 80)
                    }
                    .padding(4)
                    .background(Color("dark\(student.house.rawValue.lowercased())"))
                    .cornerRadius(100)
                    .shadow(radius: 8)
                } else {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .padding(4)
                        .background(Color("dark\(student.house.rawValue.lowercased())"))
                        .cornerRadius(100)
                        .shadow(radius: 8)
                }
                
                
                Text(student.name)
                //                .frame(height: 48)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .bold()
                
                Text(student.house.rawValue.uppercased())
                    .font(.system(size: 14))
                    .foregroundStyle(Color("\(student.house.rawValue.lowercased())"))
                    .padding(.top, -8)
                
                
                Text("\(student.year)e année")
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .padding(8)
                    .background(Color("\(student.house.rawValue.lowercased())"))
                    .cornerRadius(8)
                
            }
            
        }
        .padding()
                    .foregroundStyle(.encre)
                    .frame(width: 178, height: 205)
                    .background(Color("\(student.house.rawValue.lowercased())").opacity(0.3))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color("dark\(student.house.rawValue.lowercased())").opacity(0.7), lineWidth: 2)
                    )
                    
                    //        .frame(height: 120)
                    .cornerRadius(16)
                    //        .padding(.horizontal, 4)
                    .shadow(radius: 8)
        
    }
    
}

#Preview {
    StudentCard(student: studentTest)
}
