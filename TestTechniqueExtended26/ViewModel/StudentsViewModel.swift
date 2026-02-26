//
//  StudentsViewModel.swift
//  TestTechniqueExtended26
//
//  Created by Ayoub ABARJI on 25/02/2026.
//

import Foundation
import Observation

@Observable
class StudentsViewModel {
    
    private let apiKey: String =
        "pat0hWz2N8XIytsTI.f5e4da70d912b4cadb652490bb19751fa899f3fb21721f7c8e0943cdf0267953"
    private let baseURL = URL(
        string: "https://api.airtable.com/v0/appsyTqGjK8NLoLyx/Student"
    )!
    var students: [Student] = []
    
    func fetchStudents() async throws -> [Student] {
        
        var request = URLRequest(url: baseURL)
        request.httpMethod = "GET"
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

        let (data, _) = try await URLSession.shared.data(for: request)

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

        do {
            let decoded = try decoder.decode(StudentsResponse.self, from: data)
            let students = decoded.records.map { $0.fields }
            self.students = students
            return students
        } catch {
            print("Échec du décodage: \(error)")
            throw error
        }
    }
    
}

