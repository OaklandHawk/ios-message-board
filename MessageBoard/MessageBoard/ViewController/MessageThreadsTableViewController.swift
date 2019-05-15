//
//  MessageThreadsTableViewController.swift
//  MessageBoard
//
//  Created by Taylor Lyles on 5/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class MessageThreadsTableViewController: UITableViewController {
	
	var messageThreadController : MessageThreadController = MessageThreadController()

    override func viewDidLoad() {
        super.viewDidLoad()

		
    }

	@IBOutlet weak var textFieldOutlet: UITextField!
	
	@IBAction func textFieldAction(_ sender: Any) {
	}
	

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
        return messageThreadController.messageThreads.count
    }

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
		let message = messageThreadController.messageThreads[indexPath.row]
		cell.textLabel?.text = message.title
		return cell
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "CellSegue" {
			let destinationVC: MessageThreadDetailTableViewController = segue.destination as! MessageThreadDetailTableViewController
			guard let index = tableView.indexPathForSelectedRow?.row else { return }
			destinationVC.messageThreads = messageThreadController.messageThreads[index]
		}
	}
}
