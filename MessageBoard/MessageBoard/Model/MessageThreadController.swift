//
//  MessageThreadController.swift
//  MessageBoard
//
//  Created by Taylor Lyles on 5/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

class MessageThreadController {
	var messageThreads: [MessageThread] = []
	static let baseURL = URL(string: "https://lambda-message-board.firebaseio.com/")!
	
	func createMessageThread(title: String, completion: @escaping (Error?) -> Void) {
		let message = MessageThread(title: title)
		let url = MessageThreadController.baseURL
		
		var urlIdentifier = url.appendingPathComponent(message.identifier)
		urlIdentifier.appendPathExtension("json")
		
		var request = URLRequest(url: urlIdentifier)
		request.httpMethod = "PUT"
		print(request)
		do {
			let encoder = JSONEncoder()
			request.httpBody = try encoder.encode(message)
		} catch {
			NSLog("error")
			completion(error)
			return
		}
		
		URLSession.shared.dataTask(with: request) { (_, _, error) in
			if let error = error {
				NSLog("error")
				completion(error)
				return
				
			}
			
			self.messageThreads.append(message)
			completion(nil)
		}.resume()
		
	}
}
