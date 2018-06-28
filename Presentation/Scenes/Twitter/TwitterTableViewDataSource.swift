//
//  TwitterTableViewDataSource.swift
//  Presentation
//
//  Created by rockname on 2018/06/26.
//  Copyright © 2018年 rockname. All rights reserved.
//

import Foundation
import Domain

public class TwitterTableViewDataSource: NSObject, UITableViewDataSource {
    private(set) var values: [[(value: Any, reusableId: String)]] = []

    func configureCell(_ cell: UITableViewCell, withValue value: Any) {
        switch (cell, value) {
        case let (cell as TwitterTableViewCell, value as Status):
            cell.configure(with: value)
        case (_ as EmptyTableViewCell, _ as Void): break
        default: break
        }
    }

    func load(_ statuses: [Status]) {
        self.values = []
        if statuses.isEmpty {
            self.values.append([(value: (), reusableId: R.reuseIdentifier.emptyTableViewCell.identifier)])
        } else {
            statuses.forEach { status in
                self.values.append([(value: status, reusableId: R.reuseIdentifier.twitterTableViewCell.identifier)])
            }
        }
    }

    public func numberOfSections(in tableView: UITableView) -> Int {
        return values.count
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values[section].count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let (value, reusableId) = self.values[indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableId, for: indexPath)
        self.configureCell(cell, withValue: value)
        return cell
    }
}
