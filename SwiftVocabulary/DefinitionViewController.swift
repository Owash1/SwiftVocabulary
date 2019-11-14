//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Osha Washington on 11/13/19.
//  Copyright © 2019 Osha Washington. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord2: VocabularyWord?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        
        // Do any additional setup after loading the view.
    }
    func updateViews() {
        if let vocabWord = vocabWord2 {
            title = vocabWord.word
            
        }
    }
    
   
}
