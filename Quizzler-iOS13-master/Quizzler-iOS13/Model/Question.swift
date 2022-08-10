//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Furkan Sarı on 10.08.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var answer : [String]
    var correctAnswer:String
    init(q:String,a:[String],correctAnswer:String){
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
