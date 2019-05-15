//
//  MessageThreadDetailTableViewController.swift
//  MessageBoard
//
//  Created by Taylor Lyles on 5/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class MessageThreadDetailTableViewController: UITableViewController {
	
	var messageThreads: MessageThread?
	var messageTC: MessageThreadController?

    override func viewDidLoad() {
        super.viewDidLoad()
		if let title = messageThreads?.title {
			self.title = title
		}
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}
	

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let returnNum = messageThreads?.messages.count else { return 0 }
		return returnNum
    }
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath)
		guard let message = messageThreads?.messages[indexPath.row] else { return cell }
		cell.textLabel?.text = message.sender
		cell.detailTextLabel?.text = message.text
		return cell
		}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		<#code#>
	}


}
