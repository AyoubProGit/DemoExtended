//
//  ContentView.swift
//  TestTechniqueExtended26
//
//  Created by Cindy Bajoni on 09/12/2025.
//

import SwiftUI

struct ListStudent: View {
    @State var vm = StudentsViewModel()
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    @State var houseFilter: House? = nil
    
    var filteredStudentsByHouse: [Student] {
        guard let houseFilter else { return vm.students }
        return vm.students.filter { student in
            student.house == houseFilter
        }
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.darkPurpleBg, .purpleBg], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Image("hogwarts")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 38)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {

                            ForEach(House.allCases) { house in
                                
                                Button {
                                    withAnimation {
                                        if houseFilter == house  {
                                            houseFilter = nil
                                        } else {
                                            houseFilter = house
                                        }
                                    }
                                } label: {
                                    Text(house.rawValue)
                                        .padding(8)
                                        .background(houseFilter != house ? Color(.colorbuttons) :  Color(.whitebutton).opacity(0.8))
                                        .cornerRadius(12)
                                        .foregroundStyle(houseFilter != house ? .textbuttons : .darkPurpleBg)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: 100)
                                                    .stroke(Color.textbuttons.opacity(0.1), lineWidth: 1)
                                            )
                                }
                            }
                        }
                            .padding(.horizontal)
                    }
                    
                    if vm.students.isEmpty {
                        ProgressView("Chargement…")
                            .tint(.white)
                    }else {
                        ScrollView(showsIndicators: false) {
                            LazyVGrid(columns: columns, spacing: 16) {
                                ForEach(filteredStudentsByHouse, id: \.id) { student in
                                    NavigationLink {
                                        StudentDetails(student: student)
                                    } label: {
                                        StudentCard(student: student)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationTitle("Élèves")
            .navigationBarHidden(true)
            .onAppear {
                Task {
                    do {
                        let _ = try await vm.fetchStudents()
                    } catch {
                        print("Failed to fetch students: \(error)")
                    }
                }
            }
        }
    }
}


#Preview {
    ListStudent()
}

