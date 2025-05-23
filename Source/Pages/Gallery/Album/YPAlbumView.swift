//
//  YPAlbumView.swift
//  YPImagePicker
//
//  Created by Sacha Durand Saint Omer on 20/07/2017.
//  Copyright © 2017 Yummypets. All rights reserved.
//

import UIKit
import Stevia

class YPAlbumView: UIView {
    
    let tableView = UITableView()
    let spinner = UIActivityIndicatorView(style: .medium)
    
    convenience init() {
        self.init(frame: .zero)
        
        let spinnerColor = UIColor { trait -> UIColor in
            return trait.userInterfaceStyle == .dark ? .white : .gray
        }
        spinner.color = spinnerColor
        spinner.style = .large

        subviews(
            tableView,
            spinner
        )
        // TableView needs to be the first subview for it to automatically adjust its content inset with the NavBar
        
        spinner.centerInContainer()
        tableView.fillContainer()
        
        backgroundColor = .ypSystemBackground
    }
}
