//
//  MovieCell.swift
//  JSONTutorial
//
//  Created by ninjaKID on 4/8/17.
//  Copyright © 2017 ninjaKID. All rights reserved.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    
    lazy var movieImage: UIImageView = {
       let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 40
        iv.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        return iv
    }()
    
    lazy var movieTitleLabel: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        l.textAlignment = .left
        l.textColor = .white
        return l
    }()
    
    lazy var dateLabel: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        l.textAlignment = .left
        l.textColor = .white
        return l
    }()
    
    lazy var priceLabel: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        l.textAlignment = .right
        l.textColor = .white
        return l
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    func setupViews() {
        backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        addSubview(movieImage)
        movieImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        movieImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        movieImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        movieImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        
        addSubview(priceLabel)
        priceLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        priceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(movieTitleLabel)
        movieTitleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        movieTitleLabel.leftAnchor.constraint(equalTo: movieImage.rightAnchor, constant: 10).isActive = true
        movieTitleLabel.rightAnchor.constraint(equalTo: priceLabel.leftAnchor, constant: -10).isActive = true
        movieTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addSubview(dateLabel)
        dateLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: movieTitleLabel.leftAnchor).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: movieTitleLabel.rightAnchor).isActive = true
        dateLabel.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor).isActive = true
        
    }
    
    
    func displayMovieInCell(using viewModel: MovieViewModel) {
        movieTitleLabel.text = viewModel.title
        dateLabel.text = viewModel.releaseDate
        priceLabel.text = viewModel.purchasePrice
    }
    
   

}
