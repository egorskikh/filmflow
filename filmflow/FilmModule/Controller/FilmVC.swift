//
//  FilmVC.swift
//  filmflow
//
//  Created by Egor Gorskikh on 10.06.2021.
//

import UIKit

class FilmVC: UIViewController {
    
    // MARK: - Film data
    
    fileprivate var films: [FilmModel] = [
        FilmModel(title: "Побег из Шоушенка", rating: "9.1", poster: #imageLiteral(resourceName: "ПобегИзШоушенка")),
        FilmModel(title: "Зеленая миля", rating: "9.1", poster: #imageLiteral(resourceName: "ЗеленаяМиля")),
        FilmModel(title: "Интерстеллар", rating: "8.6", poster: #imageLiteral(resourceName: "Интерстеллар")),
        FilmModel(title: "Форрест Гамп", rating: "8.9", poster: #imageLiteral(resourceName: "Форрест Гамп")),
        FilmModel(title: "Список Шиндлера", rating: "8.8", poster: #imageLiteral(resourceName: "Список Шиндлера (1993)")),
        FilmModel(title: "Король Лев", rating: "8.8", poster: #imageLiteral(resourceName: "Король Лев (1994)")),
        FilmModel(title: "Назад в будущее", rating: "8.6", poster: #imageLiteral(resourceName: "Назад в будущее (1985)")),
    ]
    
    // MARK: - Properties
    
    var filmView: FilmView!

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDelegates()
        setupConstraint()
    }
    
    // MARK: - Private method
    
    private func setupDelegates() {
        filmView = FilmView()
        filmView.tableView.dataSource = self
        filmView.tableView.delegate = self
    }
    
    private func setupConstraint() {
        view.addSubview(filmView.tableView)
        NSLayoutConstraint.activate([
            filmView.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            filmView.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            filmView.tableView.topAnchor.constraint(equalTo: view.topAnchor),
            filmView.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

// MARK: - UITableViewDataSource

extension FilmVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FilmCell.reuseID, for: indexPath) as! FilmCell
        cell.fillСell(for: films[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
  
        // TODO
    }
    
}

// MARK: - UITableViewDelegate

extension FilmVC: UITableViewDelegate {
    
}
