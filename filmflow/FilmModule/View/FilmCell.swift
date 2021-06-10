//
//  FilmCell.swift
//  filmflow
//
//  Created by Egor Gorskikh on 10.06.2021.
//

import UIKit

class FilmCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let reuseID = "TableViewCell"
    
    lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Film 1"
        return label
    }()
    
    lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10.0"
        return label
    }()
    
    lazy var filmImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .black
        return imageView
    }()
    
    // MARK: - Life cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: -  Private method
    
    private func setupConstraint() {
        contentView.addSubview(view)
        view.addSubview(filmImageView)
        view.addSubview(titleLabel)
        view.addSubview(ratingLabel)
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: contentView.topAnchor),
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            filmImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            filmImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            filmImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            filmImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            filmImageView.heightAnchor.constraint(equalToConstant: 100.0),
            filmImageView.widthAnchor.constraint(equalToConstant: 100.0),
            filmImageView.trailingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -8),
            
            titleLabel.leadingAnchor.constraint(equalTo: filmImageView.trailingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 47),
            titleLabel.trailingAnchor.constraint(equalTo: ratingLabel.leadingAnchor, constant: -5),
            
            ratingLabel.widthAnchor.constraint(equalToConstant: 36),
            ratingLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            ratingLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)
        ])
    }
    
    public func fillСell(for filmModel: FilmModel) {
        self.titleLabel.text = filmModel.title
        self.ratingLabel.text = filmModel.rating
        self.filmImageView.image = filmModel.poster
    }
    
}
