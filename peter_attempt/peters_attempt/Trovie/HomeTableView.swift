//
//  HomeViewController.swift
//  Trovie
//
//  Created by Niyah H on 5/2/23.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController, UISearchResultsUpdating
{
    
    var tracks: [Track] = []
    
    let searchController = UISearchController()
    
    @IBOutlet weak var HomeTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
            
      
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text
        else {
            return
        }
        print(text)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
        

    
    
    
    
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

