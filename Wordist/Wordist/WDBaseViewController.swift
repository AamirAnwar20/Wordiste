//
//  WDBaseViewController.swift
//  Wordist
//
//  Created by Aamir  on 10/09/17.
//  Copyright © 2017 AamirAnwar. All rights reserved.
//

import UIKit

class WDBaseViewController: UIViewController {
    let headingLabel = UILabel()
    let contentTableView = UITableView(frame: .zero, style: .plain)
    override func viewDidLoad() {
        super.viewDidLoad()
        createHeadingLabel()
        createTableView()
        
        NSLayoutConstraint.activate([
            headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: kStatusBarHeight + kDefaultPadding),
            headingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: kSidePadding),
            headingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -kSidePadding)
            ])
        
        var bottomPadding = kDefaultPadding
        if let tabBarHeight = self.tabBarController?.tabBar.frame.size.height {
            bottomPadding += tabBarHeight
        }
        
        NSLayoutConstraint.activate([
            contentTableView.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 40),
            contentTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-bottomPadding),
            ])
    }
    
    func createHeadingLabel() {
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.font = WDFontBigTitleSemiBold
        view.addSubview(headingLabel)
    }
    
    func createTableView() {
        contentTableView.translatesAutoresizingMaskIntoConstraints = false
        contentTableView.tableFooterView = UIView()
        view.addSubview(contentTableView)
    }



}