//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Osha Washington on 11/13/19.
//  Copyright © 2019 Osha Washington. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Sing", definition: "To Speak with harmony")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // #warning Incomplete implementation, return the number of rows
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word2 = vocabWords[indexPath.row]
        cell.textLabel?.text = word2.word
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            let vocabWord2 = vocabWords[indexPath.row]
            
            definitionVC.vocabWord2 = vocabWord2
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
