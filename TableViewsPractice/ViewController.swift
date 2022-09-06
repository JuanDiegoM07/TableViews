//
//  ViewController.swift
//  TableViewsPractice
//
//  Created by Juan Diego Marin on 5/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOulets
    @IBOutlet weak var tableViews: UITableView!
    
    //MARK: Private properties
    private let myCountries = ["Colombia", "Italia", "Mexico", "Ingraterra", "España"]
    private let adapter = CountriesViewAdapter()


    // MARK: - UIViewController Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViews.dataSource = adapter
        tableViews.delegate = adapter
        
        adapter.favoriteCountries = myCountries
        
        tableViews.register(UITableViewCell.self, forCellReuseIdentifier: "mycell")
        tableViews.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }
}

