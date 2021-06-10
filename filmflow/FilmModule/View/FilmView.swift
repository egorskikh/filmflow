//
//  FilmView.swift
//  filmflow
//
//  Created by Egor Gorskikh on 10.06.2021.
//

import UIKit

class FilmView: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(FilmCell.self,
                           forCellReuseIdentifier: FilmCell.reuseID)
        return tableView
    }()
    
}
