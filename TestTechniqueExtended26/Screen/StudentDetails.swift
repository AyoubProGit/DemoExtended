//
//  StudentDetails.swift
//  TestTechniqueExtended26
//
//  Created by Cindy Bajoni on 09/12/2025.
//

import SwiftUI

struct StudentDetails: View {
    var student: Student
    @State var showPatronus: Bool = false

    var body: some View {

        ZStack {

            LinearGradient(
                colors: [.darkPurpleBg, .purpleBg],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(alignment: .leading) {

                ZStack {
                    Color("\(student.house.rawValue.lowercased())")
                        .opacity(0.2)

                    Image(student.house.rawValue.lowercased())
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(2.7)
                        .frame(
                            maxWidth: .infinity,
                            minHeight: 300,
                            maxHeight: 300
                        )
                        .clipShape(Rectangle())

                    VStack {

                        if let url = student.picture?.first?.url {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipShape(Circle())
                            } placeholder: {
                                ProgressView()
                                    .frame(width: 80, height: 80)
                            }
                                .scaledToFit()
                                .frame(height: 200)
                                .clipShape(Circle())
                                .padding(4)
                                .background(
                                    Color(
                                        "dark\(student.house.rawValue.lowercased())"
                                    )
                                )
                                .clipShape(Circle())
                                .padding(.bottom, -20)
                        } else {
                            Image(systemName: "person.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 160)
                                .clipShape(Circle())
                                .padding(4)
                                .background(
                                    Color(
                                        "dark\(student.house.rawValue.lowercased())"
                                    )
                                )
                                .clipShape(Circle())
                                .padding(.bottom, -20)
                        }

                        Text(student.name)
                            .font(.system(size: 32))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                            .bold()

                        Text(student.house.rawValue.uppercased())
                            .font(.system(size: 18))
                            .foregroundStyle(
                                Color("\(student.house.rawValue.lowercased())")
                            )
                            .padding(.bottom, 8)

                        Text("\(student.year)e année")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                            .padding(8)
                            .background(
                                Color("\(student.house.rawValue.lowercased())")
                            )
                            .cornerRadius(8)

                    }
                    .padding(.bottom, 20)

                }
                .frame(height: 300)

                HStack {
                    
                    Text("Bio")
                        .font(.system(size: 24))
                        
                    Spacer()
                    if let isPrefect = student.isPrefect {
                        if isPrefect {
                            Image("prefet\(student.house.rawValue.lowercased())"
                            )
                            .resizable()
                            .scaledToFit()
                            .frame(height: 80)
                        }
                    }
                    
                }.padding()

                ScrollView(showsIndicators: false) {
                    Text(student.description)
                        .padding()
                    HStack {
                        Spacer()
                        VStack {
                            if !showPatronus {
                                Button {
                                    withAnimation {
                                        showPatronus.toggle()
                                    }
                                } label: {
                                    Text("Expecto Patronum")
                                        .fontWeight(.thin)
                                        .font(.system(size: 24))
                                        .padding()
                                        .background(
                                            Color(.textbuttons).opacity(0.8)
                                        )
                                        .cornerRadius(12)
                                        .foregroundStyle(.purpleBg)
                                        .shadow(color: .white, radius: 12)

                                }
                            } else if student.patronus != "Inconnu" {
                                if !student.patronus.lowercased().isEmpty {
                                    Image(student.patronus.lowercased())
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200)
                                        .shadow(color: .white, radius: 12)
                                } else {
                                    Image(systemName: "sparkles")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200)
                                        .shadow(color: .white, radius: 12)
                                }
                                Text(student.patronus)
                            } else {
                                Text("Pensez à un souvenir heureux...")
                                    .italic()
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
            Spacer()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    StudentDetails(student: studentTest)
}
