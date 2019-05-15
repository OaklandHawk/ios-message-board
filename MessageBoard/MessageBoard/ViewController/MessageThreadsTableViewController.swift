//
//  MessageThreadsTableViewController.swift
//  MessageBoard
//
//  Created by Taylor Lyles on 5/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class MessageThreadsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		
    }

	@IBOutlet weak var textFieldOutlet: UITextField!
	
	@IBAction func textFieldAction(_ sender: Any) {
	}
	

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
        return 0
    }

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
	}
}
