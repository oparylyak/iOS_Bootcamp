//
//  File.swift
//  Quizzler-iOS13
//
//  Created by Layer on 08.06.2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

//struct Question {
//    let text: String
//    let answer: String
//    
//    init (q: String, a: String) {
//        text = q
//        answer = a
//    }
//}

struct Question {
    let text: String
    let answers: [String]
    let correctAnswer: String
    
    init (q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
