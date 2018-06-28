//
//  TwitterTableViewController.swift
//  Presentation
//
//  Created by rockname on 2018/06/25.
//  Copyright © 2018年 rockname. All rights reserved.
//

import UIKit
import Domain
import Mock

public class TwitterTableViewController: UITableViewController {

    private let dataSource = TwitterTableViewDataSource()

    override public func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = R.string.localizable.home()
        configureTableView()
        load(MockContainer.shared.mockStatuses)
    }

    private func configureTableView() {
        tableView.dataSource = dataSource

        tableView.register(R.nib.twitterTableViewCell)
        tableView.register(R.nib.emptyTableViewCell)
    }

    public func load(_ statuses: [Status]) {
        tableView.separatorStyle = statuses.isEmpty ? .none : .singleLine
        dataSource.load(statuses)
        tableView.reloadData()
    }
}
