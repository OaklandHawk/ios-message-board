//
//  MessageThread.swift
//  MessageBoard
//
//  Created by Taylor Lyles on 5/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation

class MessageThread: Codable, Equatable {
	let title: String
	let identifier: String
	var messages: [MessageThread.Message]
	
	static func ==(lhs: MessageThread, rhs: MessageThread) -> Bool {
		return lhs.title == rhs.title && lhs.identifier == rhs.identifier
	}
	
	init(title: String, identifier: String = UUID().uuidString, messages: [MessageThread.Message] = [] ) {
		
	}
	
	struct Message: Equatable, Codable {
		let text: String
		let sender: String
		let timestamp: Date
		
		init(text: String, sender: String, timestamp: Date = (Date())) {
			
		}
		
	}
	
}
