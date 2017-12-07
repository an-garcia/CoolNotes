//
//  NotesViewController.swift
//  CoolNotes
//
//  Created by Fernando Rodríguez Romero on 11/03/16.
//  Copyright © 2016 udacity.com. All rights reserved.
//

import UIKit

// MARK: - NotesViewController: CoreDataTableViewController

class NotesViewController: CoreDataTableViewController {
    
    // MARK: TableView Data Source
    
    // TODO: Figure out how to add a button to the view and connect it
    @IBAction func addNewNote(sender: AnyObject) {
        // Create a new note
        let n = Note(text: "A new note", context: self.fetchedResultsController!.managedObjectContext)
        print("Created new note: \(n)")
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get the note
        let note = fetchedResultsController?.object(at: indexPath) as! Note
        
        // Get the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        
        // Sync note -> cell
        cell.textLabel?.text = note.text
        
        // Return the cell
        return cell
    }
    
    // MARK: Navigation
    
    /*
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}

